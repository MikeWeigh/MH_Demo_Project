object dmMain: TdmMain
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object AureliusConnection1: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection1
    SQLDialect = 'Firebird'
    Left = 48
    Top = 40
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Delphi\Scratch\CustomerProject\CUST.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=30500'
      'DriverID=FB')
    Left = 56
    Top = 376
  end
  object adsCustomer: TAureliusDataset
    FieldDefs = <
      item
        Name = 'Self'
        Attributes = [faReadonly]
        DataType = ftVariant
      end
      item
        Name = 'Id'
        Attributes = [faReadonly, faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FirstName'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'LastName'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Address1'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Address2'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PostCode'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ContactNo'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DateOfBirth'
        DataType = ftDate
      end>
    BeforeOpen = adsCustomerBeforeOpen
    Left = 456
    Top = 112
    DesignClass = 'entities.TCustomer'
    object adsCustomerSelf: TAureliusEntityField
      FieldName = 'Self'
      ReadOnly = True
      Visible = False
    end
    object adsCustomerId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object adsCustomerFirstName: TStringField
      FieldName = 'FirstName'
      Required = True
      Size = 30
    end
    object adsCustomerLastName: TStringField
      FieldName = 'LastName'
      Required = True
      Size = 30
    end
    object adsCustomerAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object adsCustomerAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object adsCustomerCity: TStringField
      FieldName = 'City'
    end
    object adsCustomerPostCode: TStringField
      FieldName = 'PostCode'
      Size = 10
    end
    object adsCustomerContactNo: TStringField
      FieldName = 'ContactNo'
      Size = 10
    end
    object adsCustomerDateOfBirth: TDateField
      FieldName = 'DateOfBirth'
    end
  end
  object Manager: TAureliusManager
    Connection = AureliusConnection1
    Left = 48
    Top = 104
  end
  object Schema: TAureliusDBSchema
    Connection = AureliusConnection1
    Left = 48
    Top = 192
  end
  object AureliusModelEvents1: TAureliusModelEvents
    OnSQLExecuting = AureliusModelEvents1SQLExecuting
    Left = 352
    Top = 288
  end
end
