object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 445
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveTextReader1
    Writer = FDBatchMoveSQLWriter1
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'ID'
      end
      item
        SourceFieldName = 'first_name'
        DestinationFieldName = 'FIRST_NAME'
      end
      item
        SourceFieldName = 'last_name'
        DestinationFieldName = 'LAST_NAME'
      end
      item
        SourceFieldName = 'ADDRESS_1'
        DestinationFieldName = 'ADDRESS_1'
      end
      item
        SourceFieldName = 'ADDRESS_2'
        DestinationFieldName = 'ADDRESS_2'
      end
      item
        SourceFieldName = 'city'
        DestinationFieldName = 'CITY'
      end
      item
        SourceFieldName = 'post_code'
        DestinationFieldName = 'POST_CODE'
      end
      item
        SourceFieldName = 'contact_no'
        DestinationFieldName = 'CONTACT_NO'
      end
      item
        SourceFieldName = 'date_of_birth'
        DestinationFieldName = 'DATE_OF_BIRTH'
      end>
    LogFileAction = laCreate
    LogFileName = 'C:\Delphi\Scratch\CustomerProject\log.txt'
    Analyze = [taDelimSep, taFormatSet, taHeader, taFields]
    Left = 264
    Top = 96
  end
  object FDBatchMoveTextReader1: TFDBatchMoveTextReader
    FileName = 'C:\Users\michael.hann\Downloads\MOCK_DATA.csv'
    DataDef.Fields = <
      item
        FieldName = 'id'
        DataType = atLongInt
        FieldSize = 1
      end
      item
        FieldName = 'first_name'
        DataType = atString
        FieldSize = 8
      end
      item
        FieldName = 'last_name'
        DataType = atString
        FieldSize = 10
      end
      item
        FieldName = 'ADDRESS_1'
        DataType = atString
        FieldSize = 12
      end
      item
        FieldName = 'ADDRESS_2'
        DataType = atString
        FieldSize = 12
      end
      item
        FieldName = 'city'
        DataType = atString
        FieldSize = 16
      end
      item
        FieldName = 'post_code'
        DataType = atString
        FieldSize = 11
      end
      item
        FieldName = 'contact_no'
        DataType = atLongInt
        FieldSize = 2
      end
      item
        FieldName = 'date_of_birth'
        DataType = atString
        FieldSize = 9
      end>
    DataDef.Delimiter = '"'
    DataDef.Separator = ','
    DataDef.RecordFormat = rfCustom
    DataDef.WithFieldNames = True
    DataDef.FormatSettings.DateSeparator = '-'
    DataDef.FormatSettings.ShortDateFormat = 'yyyy/MM/dd'
    DataDef.FormatSettings.ShortTimeFormat = 'HH:mm:ss'
    Left = 256
    Top = 304
  end
  object FDBatchMoveSQLWriter1: TFDBatchMoveSQLWriter
    Connection = dmMain.FDConnection1
    TableName = 'CUSTOMER'
    GeneratorName = 'SEQ_CUSTOMER'
    Left = 416
    Top = 304
  end
end
