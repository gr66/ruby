module ArrayUtils

  # Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
  def self.outpu_even_odd_index(a)
    a.partition.with_index{|v,i| i.even?}.flatten
  end

  # Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
  def self.output_odd_even_index(a)
    a.partition.with_index{|v,i| i.odd?}.flatten
  end

  # Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].
  def self.first_double_inequality(a)
    [a.index{|v|  (a[0]+1...a[-1]).include?(v)}].compact
  end

  # Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].
  def self.last_double_inequality(a)
    [a.reverse.index{|v|  (a[0]+1...a[-1]).include?(v)}].compact
  end

  #Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.
  def self.convert_add_first_to_even_numbers(a)
    [a[0]] + a[1...-1].map{|s| s.even? ? s +a[0] : s } + [a[-1]]
  end
  # В численном массиве найти сумму отрицательных элементов
  def self.sum_negative_elements(a)
    a.find_all{|z| z<0}.inject(:+)
  end

  # Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность. a.each_with_index.sort.each {|a| a[1]}
  def self.sort_elements_rising_index
    a.each_with_index.sort.each {|a| a[1]}
  end
end
