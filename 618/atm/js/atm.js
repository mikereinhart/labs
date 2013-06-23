var checking_balance = 1000.00;
var savings_balance = 1000.00;

//CHECKING ACCOUNT
function deposit_into_checking(){

  var amount_input = parseFloat($('#checking input[name=amount]').val());
  checking_balance += amount_input;
  $('#checking').removeClass('overdrawn');
  $('#checking span.balance').text(checking_balance);

  console.log(amount_input);
}

function withdraw_from_checking(){

  var amount_input = parseFloat($('#checking input[name=amount]').val());
  if (amount_input < checking_balance) {
    checking_balance -= amount_input;
    $('#checking span.balance').text(checking_balance);
  }
  else {
    $('#checking').addClass('overdrawn');
    alert("Sorry, you cannot withdraw more than your balance. Nice try!");
  }

  console.log(amount_input);
}

//SAVINGS ACCOUNT
function deposit_into_savings(){

  var amount_input = parseFloat($('#savings input[name=amount]').val());
  savings_balance += amount_input;
  $('#savings').removeClass('overdrawn');
  $('#savings span.balance').text(savings_balance);

  console.log(amount_input);
}

function withdraw_from_savings(){

  var amount_input = parseFloat($('#savings input[name=amount]').val());
  if (amount_input < savings_balance) {
    savings_balance -= amount_input;
    $('#savings span.balance').text(savings_balance);
  }
  else {
    $('#savings').addClass('overdrawn');
    alert("Sorry, you cannot withdraw more than your balance. Nice try!");

  }

  console.log(amount_input);
}

$(document).ready(
  function(){

    $('#checking .deposit').click(deposit_into_checking);
    $('#checking .withdraw').click(withdraw_from_checking);
    $('#savings .deposit').click(deposit_into_savings);
    $('#savings .withdraw').click(withdraw_from_savings);

  }
);
