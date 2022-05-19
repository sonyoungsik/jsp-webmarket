package dao;

import java.util.ArrayList;
import java.util.List;
import dto.Product;


public class ProductRepository {

	private List<Product> products = new ArrayList<>();
	
	public ProductRepository() {
		
		Product phone = new Product("P1234", "iPhone6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
		
	}
	public List<Product> getAllProducts(){
		return products;
	}
	
	//상품 ID로 상품을 찾기

	public Product getProductById(String productId) {
		return products // 동일한 기존 코드(for문) 교재 p.173을 참고하시기 바랍니다...
				.stream() // 상품 3개가 흘러갑니다...
				.filter((product) -> product.getProductId().equals(productId)) // 망에 걸칠 조건을 설정합니다...
				.findFirst() // 가장 먼저 걸린 것을 찾습니다...
				.get(); // 가장 먼저 걸린 녀석을 get합니다...
	}
	
	
	
	
	
}
