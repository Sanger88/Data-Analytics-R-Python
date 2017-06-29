class SpellChecker:
	def __init__(self):
		self.words = []
	def load_words(self, file_name):
		self.words = open(file_name).readlines()
		self.words = map(lambda x: x.strip().lower(), self.words)
#		return words

	def load_file(self, file_name):
		lines = open(file_name).readlines()
		lines = map(lambda x: x.strip(), lines)
		return lines
		
	def check_word(self, word):
		return word.strip('.').lower() in self.words
		
	def check_words(self, sentence):
		words_to_check = sentence.split(' ')
		failed_words = []
		for word in words_to_check:
			if not self.check_word(word):
				print('Word is misspelt : ' + word)
				failed_words.append(word)
		return failed_words

	def check_document(self, file_name):
		self.sentences = self.load_file(file_name)
		failed_words_in_sentences = []
		index = 0
		for sentence in self.sentences:
			failed_words_in_sentences.extend(self.check_words(sentence))
			index = index + 1
		return failed_words_in_sentences

if __name__ == '__main__':
	spellChecker = SpellChecker()
	spellChecker.load_words('spell.words')
	print(spellChecker.check_word('zygotic'))
	print(spellChecker.check_words('zygotic mistasdas elementary'))