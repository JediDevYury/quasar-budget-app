export function useAmountColorClass(amount: number) {
  if (amount > 0) {
    return 'text-positive';
  }
  if (amount < 0) {
    return 'text-negative';
  }
  return 'text-grey-6';
}
