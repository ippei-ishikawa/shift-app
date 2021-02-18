require "google_drive"
# config.jsonを読み込んでセッションを確立
session = GoogleDrive::Session.from_config("config.json")
# スプレッドシートをURLで取得
sp = session.spreadsheet_by_url("https://docs.google.com/spreadsheets/d/1HjFNLe6Jo1DjACXSZTI1Cna6Gd5JBei6sP1vlTPz2Do/edit#gid=669170734")
# ワークシートを取得
ws = sp.worksheet_by_title("1月の概要")
# セルを指定して値を更新インデックスの基準は1