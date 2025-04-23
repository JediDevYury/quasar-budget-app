export function useCurrencify(amount: number) {
  let posNegSign: string;
  if (amount > 0) {
    posNegSign = '+';
  } else if (amount < 0) {
    posNegSign = '-';
  } else {
    posNegSign = '';
  }

  const currencySymbol = '$';
  const amountPositive = Math.abs(amount);
  const amountFormatted = amountPositive.toLocaleString('en-US', {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  });
  return `${posNegSign} ${currencySymbol} ${amountFormatted}`;
}
