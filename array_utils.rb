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
    # [a.index{|v|  (a[0]+1...a[-1]).include?(v)}].compact
    [a.index{|v|  a[0] < v && v < a[-1]}].compact
  end

  # Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].
  def self.last_double_inequality(a)
    [a.reverse.index{|v|  (a[0]+1...a[-1]).include?(v)}].compact
  end

  #Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.
  def self.convert_add_first_to_even_numbers(a)
    # [a[0]] + a[1...-1].map{|s| s.even? ? s +a[0] : s } + [a[-1]]
    a.map.with_index{|v, i| i != 0 && i != a.size-1 && v.odd? ? v+a[0] : v}
  end
  # В численном массиве найти сумму отрицательных элементов
  def self.sum_negative_elements(a)
    a.find_all{|z| z<0}.inject(:+)
  end

  # Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность. a.each_with_index.sort.each {|a| a[1]}
  def self.sort_elements_rising_index(a)
    a.each_with_index.sort.map {|a| a[1]}
  end

  # Дана строка слов, разделёных пробелами. Вывести длиннейшее слово.
  def self.max_size_string(a)
    a.split(" ").max_by {|e|  e.size}
  end

  # Дан целочисленный массив. Заменить все положительные элементы на значение максимального.
  def self.positiv_elements_to_max(a)
    a.map { |x| x.even? ? x = a.max : x }
  end

  # 61 Дан целочисленный массив. Найти два наибольших элемента.
  def self.find_two_max(a)
    a.max(2)
  end

  # 85 Дано натуральное число N. Если N - нечетное, то найти произведение 1*3*…*N; если N - четное, то найти произведение 2*4*…*N.
  def self.multiplication_sequence(n)
    (n%2..n).step(2).reject { |x| x==0 }.reduce(:*)
  end

# 106 Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел из данного массива, расположенных между первыми двумя нулями.
  def self.sum_beetwen_zeroes(a)
    r = a.map.with_index { |x,i| i if x == 0}.compact.first(2)
    a[(r[0]..r[1])].reduce(:+)
  end

  # Сортировка массива: чет/нечет
  def self.sort_odd_even(a)
    n=0
    l = 0
    while l < 2
      if (n..a.size-2).step(2).map {|i| a[i], a[i+1] = a[i+1], a[i] if a[i] > a[i+1] }.compact.size > 0
        l = 0
      else
        l += 1
      end

      n==0 ? n=1 : n=0
    end
    a
  end

  # Сортировка массива: обратный порядок
  def self.reverse_array(a)
    s = a.size
    (0..s/2-1).map {|i| a[i], a[s-(i+1)] = a[s-(i+1)], a[i] }
    a
  end

  # Сортировка массива: массив строк упорядочить по длине слов
  def self.sort_string(a)
    n=0
    l = 0
    while l < 2
      if (n..a.size-(2)).step(2).map { |i| a[i], a[i+1] = a[i+1], a[i] if a[i].size > a[i+1].size }.compact.size > 0
        l = 0
      else
        l += 1
      end
        n==0 ? n=1 : n=0
    end
    a
  end
end
