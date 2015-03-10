class Erastos

	def self.erastos(inputArray)

		result = ""

		if !error?(inputArray)
			limit = inputArray[0].to_i

			# 探索リストの作成
			targetArray = []
			for num in 2..limit do
				
				targetArray << num

			end

			# 素数リストの作成
			erastosArray = []
			while targetArray[0]**2 <= limit

				target = targetArray.shift()

				# 対象を素数リストに加える
				erastosArray << target

				# 対象の倍数を探索リストから除外する
				targetArray.each do |num|

					if num%target == 0
						targetArray.delete(num)
					end
				end
			end

			erastosArray  = erastosArray + targetArray
			erastosArray.sort

			result = erastosArray.to_s
			result.slice!(0)
			result.chop!

			puts result
		end

		result
	end

	def self.error?(param_array)

		isError = false

		if param_array.length != 1

			isError = true
			puts "数値を１つのみ指定してください。"

		elsif param_array[0].to_i < 2

			isError = true
			puts "２以上の値を指定してください。"
		end

		isError

	end
end

Erastos.erastos(ARGV)