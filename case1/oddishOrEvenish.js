function oddishOrEvenish(number) {
	
  const arrayOfNumber = Array.from(String(number));
  // Verilen sayı rakamlarına ayrılıp array yapısında saklandı.
	let sum = 0;
  //Rakamlar toplamı için kullanılacak olan değişken tanımlandı.
	arrayOfNumber.forEach(item => {
    sum += parseInt(item);
  });
  //Arrow function ile arrayde bulunan her rakam forEach ile rakam döndürülüp toplanarak sum değişkenine eklendi.
  if(sum % 2 == 0) {
    return "Even"
}
  else if(sum % 2 ==1){
  	return "Odd"
  }
}
// Rakamlar toplamı olan sum değişkeninin 2 ile bölümünden kalan 1 ise Odd 0 ise Even döndürüldü.
  
console.log(oddishOrEvenish(111));
console.log(oddishOrEvenish(268));