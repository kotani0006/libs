class String
	# このオブジェクトと対象のオブジェクトの同値性を比較します。
	# ブロックが渡された場合、ブロックの引数に比較結果が渡され、ブロックの評価結果が返り値となります。
	def same?(other)
		result = self == other
		if block_given?
			yield result
		else
			result
		end
	end
end