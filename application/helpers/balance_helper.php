<?php if (!defined("BASEPATH")) exit("No direct script access allowed");

function balance()
{

  $deposit = total_deposit();
  $investment = total_investment();
  $investment_profit = total_investment_profit();
  $total = $deposit-$investment+$investment_profit;
  return $total;
}


function total_deposit()
{
  $ci=& get_instance();
  $qry = $ci->db->query("SELECT
                          	deposit.id_deposit,
                          	deposit.id_person,
                          	Sum( deposit.amount ) AS amount,
                          	deposit.status
                          FROM
                          	deposit
                          WHERE
                          	deposit.id_person = ".$ci->session->userdata('id_person')." AND deposit.status = 'approved'
                          ")->row();
  return $qry->amount;
}


function total_investment()
{
  $ci=& get_instance();
  $qry = $ci->db->query("SELECT
                          	investment.id_invest,
                          	investment.kode_invest,
                          	investment.id_person,
                          	Sum( investment.amount ) AS amount,
                          	investment.status,
                          	investment.created
                          FROM
                          	investment
                          WHERE
                          	investment.id_person = ".sess('id_person')." AND
                            investment.status = 'ongoing'")->row();
  return $qry->amount;
}


function total_investment_profit()
{
  $ci=& get_instance();
  $qry = $ci->db->query("SELECT
                          	investment.id_invest,
                          	investment.id_person,
                          	Sum( investment_profit.amount_profit ) AS amount_profit
                          FROM
                          	investment
                          INNER JOIN
                            investment_profit ON investment_profit.id_invest = investment.id_invest
                          WHERE
                          	investment.id_person = ".sess("id_person")." AND
                            investment_profit.amount_profit IS NOT NULL")->row();
  return $qry->amount_profit;
}
