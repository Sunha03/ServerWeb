package openapi;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

//XML 문서 파싱
public class DomParserTest01 {
	public static void main(String[] args) throws Exception {
		//Parser 생성기
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		
		//DOM Parser
		DocumentBuilder domparser = factory.newDocumentBuilder();
		
		//Parser의 parse 메소드를 호출하면 xml을 분석하여 DOm 객체로 만들어서 반환
		Document document = domparser.parse("src/openapi/dept.xml");
		
		//root 엘리먼트
		Element root = document.getDocumentElement();
		System.out.println(root.getNodeName());
		
		//dept 엘리먼트 추출
		NodeList nodelist = root.getElementsByTagName("dept");
		System.out.println(nodelist.getLength());
		for(int i=0;i<nodelist.getLength();i++) {
			Node node = nodelist.item(i);
			System.out.println("노드명 : " + node.getNodeName());
		}
	}
}
