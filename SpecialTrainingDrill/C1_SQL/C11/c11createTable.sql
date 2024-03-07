--SQL特訓
--C1.1

--銀行口座テーブルを作成
--同じ名前のテーブルがすでにある場合はそのテーブルを削除する
drop table if exists c111BankAccounts;
create table c111BankAccounts (
	accountsNum char(7),  --口座番号
	accountName varchar(40), --名義
	accountType char(1), --種別
	accountBalance integer, --残高
	updatedate date --更新日
);

--廃止口座テーブルを作成
--同じ名前のテーブルがすでにある場合はそのテーブルを削除する
drop table if exists c112HaishiBankAccounts;
create table c112HaishiBankAccounts (
	accountsNum char(7),  --口座番号
	accountName varchar(40), --名義
	accountType char(1), --種別
	CancellBalance integer, --解約時残高
	CancellDate date --解約日
);

--取引テーブルを作成
--同じ名前のテーブルがすでにある場合はそのテーブルを削除する
drop table if exists c113Transaction;
create table c113Transaction (
	transactionNum integer, --取引番号
	transactionReason integer, --取引事由
	transactionDate date, --日付
	accountsNum char(7),  --口座番号
	depositamount integer, --入金額
	withdrawalamount integer --出金額	
);

--取引事由テーブルを作成
--同じ名前のテーブルがすでにある場合はそのテーブルを削除する
drop table if exists c114TransactionReason;
create table c114TransactionReason (
	transactionReasonID integer, --取引事由ID
	transacitonReasonName varchar(20) --取引事由名
);



