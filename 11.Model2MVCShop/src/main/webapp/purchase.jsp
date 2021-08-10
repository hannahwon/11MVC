<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">

//function buyTest(){
$( function(){
$("#check_module").click(function () {
var IMP = window.IMP; // ��������
IMP.init('iamport');
//IMP.init('imp40537238');
// 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���
// i'mport ������ ������ -> ������ -> �������ĺ��ڵ�
IMP.request_pay({
pg: 'inicis', // version 1.1.0���� ����.
/*
'kakao':īī������,
html5_inicis':�̴Ͻý�(��ǥ�ذ���)
'nice':���̽�����
'jtnet':����Ƽ��
'uplus':LG���÷���
'danal':�ٳ�
'payco':������
'syrup':�÷�����
'paypal':������
*/
pay_method: 'card',
/*
'samsung':�Ｚ����,
'card':�ſ�ī��,
'trans':�ǽð�������ü,
'vbank':�������,
'phone':�޴����Ҿװ���
*/
merchant_uid: 'merchant_' + new Date().getTime(),
/*
merchant_uid�� ���
https://docs.iamport.kr/implementation/payment
���� url�� ���󰡽ø� ���� �� �ִ� ����� �ֽ��ϴ�.
�����ϼ���.
���߿� ������ �غ��Կ�.
*/
name: '�ֹ���:�Ʊ�ƴµ���',
//����â���� ������ �̸�
amount: 100,
//����
buyer_email: 'iamport@siot.do', 
//buyer_email: 'shw9401@naver.com', 
buyer_name: '���', //�������̸�
buyer_tel: '010-1234-5678', //�����ڿ���ó
buyer_addr: '����Ư���� ���α� ��Ʈķ��', //������ �ּ���
buyer_postcode: '123-456', //������ �����ȣ
m_redirect_url: 'https://www.yourdomain.com/payments/complete'//,
//digital : true, //���� ��ǰ���� ������ ��ǰ����(�ڵ��� �������� �ʼ� �Ķ����)
//app_sceme : '' //���ƿ� app scheme

/*
����� ������,
������ ������ �����Ǵ� URL�� ����
(īī������, ������, �ٳ��� ���� �ʿ����. PC�� ���������� callback�Լ��� ����� ������)
*/
}, function (rsp) {
console.log(rsp);
if (rsp.success) {
var msg = '������ �Ϸ�Ǿ����ϴ�.';
msg += '����ID : ' + rsp.imp_uid;
msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
msg += '���� �ݾ� : ' + rsp.paid_amount;
msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
} else {
var msg = '������ �����Ͽ����ϴ�.';
msg += '�������� : ' + rsp.error_msg;
}
alert(msg);
	});
})
})
	/*$( function(){
		$("#buy").on("click", function(){
			buyTest();
		})
	})*/

</script>

<meta charset="EUC-KR">
<title>KakaoPay �����ض�</title>
</head>
<body>





<p>

    <p>����â���� �̵�</p>
    <button id="check_module" type="button">�����ϱ�</button>
</p>




</body>
</html>