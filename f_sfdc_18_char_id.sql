create or replace function f_sfdc_18_char_id(id varchar)
  returns varchar
stable
as $$
  if len(id) == 18:
    raise ValueError('The given id is already 18 characters long.')
  if len(id) != 15:
    raise ValueError('The given id is not 15 characters long.')
  lookup_str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345'
  lookup_list = list(lookup_str)
  sum_list = [1, 2, 4, 8, 16]
  counter = 0
  suffix = ''

  for i, char in enumerate(id):
    sum_index = i % 5
    if char.isupper():
      counter += sum_list[sum_index]
    if sum_index == 4:
      suffix += lookup_list[counter]
      counter = 0

  return id + suffix
$$ language plpythonu
