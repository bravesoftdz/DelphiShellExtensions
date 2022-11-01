object UserSettingsForm: TUserSettingsForm
  Left = 259
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 511
  ClientWidth = 815
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 600
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object TLabel
    Left = 4
    Top = 32
    Width = 3
    Height = 15
  end
  object pc: TPageControl
    Left = 153
    Top = 41
    Width = 662
    Height = 451
    ActivePage = tsFont
    Align = alClient
    Images = VirtualImageList
    TabOrder = 0
    ExplicitWidth = 658
    ExplicitHeight = 450
    object tsFont: TTabSheet
      Caption = 'Font'
      ImageIndex = 2
      ImageName = 'alphabetical-variant'
      object FontLabel: TLabel
        Left = 8
        Top = 33
        Width = 57
        Height = 15
        Caption = 'Font name'
      end
      object SizeLabel: TLabel
        Left = 8
        Top = 79
        Width = 20
        Height = 15
        Caption = 'Size'
      end
      object CbFont: TComboBox
        Left = 8
        Top = 50
        Width = 225
        Height = 22
        Style = csOwnerDrawFixed
        Sorted = True
        TabOrder = 0
        OnDrawItem = CbFontDrawItem
      end
      object EditFontSize: TEdit
        Left = 8
        Top = 96
        Width = 34
        Height = 23
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 1
        Text = '12'
      end
      object FontSizeUpDown: TUpDown
        Left = 42
        Top = 96
        Width = 16
        Height = 23
        Associate = EditFontSize
        Min = 8
        Max = 30
        Position = 12
        TabOrder = 2
      end
      object PanelTopFont: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 25
        Align = alTop
        Caption = 'FONT SELECTION AND SIZE'
        TabOrder = 3
        ExplicitWidth = 650
      end
    end
    object stTheme: TTabSheet
      Caption = 'Theme'
      ImageIndex = 1
      ImageName = 'theme-light-dark'
      object ThemeLeftPanel: TPanel
        Left = 0
        Top = 25
        Width = 185
        Height = 377
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object ThemesRadioGroup: TRadioGroup
          Left = 0
          Top = 0
          Width = 185
          Height = 118
          Align = alTop
          Caption = 'Theme'
          ItemIndex = 0
          Items.Strings = (
            'Same as Windows'
            'Force Dark'
            'Force Light')
          TabOrder = 0
          OnClick = ThemesRadioGroupClick
        end
        object SelectThemeRadioGroup: TRadioGroup
          Left = 0
          Top = 118
          Width = 185
          Height = 259
          Align = alClient
          Caption = 'Selected Theme'
          TabOrder = 1
          OnClick = SelectThemeRadioGroupClick
        end
      end
      object ThemeClientPanel: TPanel
        Left = 185
        Top = 25
        Width = 469
        Height = 377
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        StyleElements = []
      end
      object PanelTopTheme: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 25
        Align = alTop
        Caption = 'THEME SELECTION'
        TabOrder = 2
      end
    end
    object stGeneral: TTabSheet
      Caption = 'Preview settings'
      ImageIndex = 4
      ImageName = 'eye-settings'
      object PanelTopPreviewSettings: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 25
        Align = alTop
        Caption = 'RENDERING OPTIONS'
        TabOrder = 0
      end
      object ShowEditorCheckBox: TCheckBox
        Left = 12
        Top = 41
        Width = 284
        Height = 18
        Caption = 'Show Original Content'
        TabOrder = 1
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 492
    Width = 815
    Height = 19
    Panels = <>
    ParentFont = True
    SimplePanel = True
    UseSystemFont = False
    ExplicitTop = 491
    ExplicitWidth = 811
  end
  object MenuButtonGroup: TButtonGroup
    Left = 0
    Top = 41
    Width = 153
    Height = 451
    Align = alLeft
    BevelOuter = bvNone
    BorderStyle = bsNone
    ButtonHeight = 48
    ButtonOptions = [gboFullSize, gboGroupStyle, gboShowCaptions]
    Images = VirtualImageList
    Items = <
      item
        Caption = '  Back'
        ImageIndex = 3
        ImageName = 'arrow-left'
      end
      item
        Caption = '  Font'
        ImageIndex = 2
        ImageName = 'alphabetical-variant'
      end
      item
        Caption = '  Theme'
        ImageIndex = 1
        ImageName = 'theme-light-dark'
      end
      item
        Caption = '  Preview'
        ImageIndex = 4
        ImageName = 'eye-settings'
      end>
    TabOrder = 2
    OnButtonClicked = MenuButtonGroupButtonClicked
    ExplicitHeight = 450
  end
  object TitlePanel: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'Settings'
    TabOrder = 3
    ExplicitWidth = 811
  end
  object OpenDialog: TOpenDialog
    Left = 584
    Top = 312
  end
  object VirtualImageList: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'palette'
        Name = 'palette'
      end
      item
        CollectionIndex = 1
        CollectionName = 'theme-light-dark'
        Name = 'theme-light-dark'
      end
      item
        CollectionIndex = 2
        CollectionName = 'alphabetical-variant'
        Name = 'alphabetical-variant'
      end
      item
        CollectionIndex = 3
        CollectionName = 'arrow-left'
        Name = 'arrow-left'
      end
      item
        CollectionIndex = 4
        CollectionName = 'eye-settings'
        Name = 'eye-settings'
      end>
    ImageCollection = ImageCollection
    Width = 36
    Height = 36
    Left = 399
    Top = 260
  end
  object ImageCollection: TImageCollection
    Images = <
      item
        Name = 'palette'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000000BE4944415478DA6364A01030D2C2000E206E06E22234F985405C06C4
              AFF119A00CC4B781F81310F700711354BC0E884B80980F883D81782736034036
              7F43D2D002C4CFA07C2920AE41325003886FA11BD00DC4C548FC17402C81850D
              02C780D806DD80BF40BC0E88D381F80D8E301301E299401C0CC44CE806FC03E2
              B5941A402C0085150F362F109B2E5C81782FA1404406A0A8FD090DF97A20BE0A
              93C0158DC8603DD4CF5801AE84840E98883500E612E4A40C723A272906900428
              360000411027117552F60B0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F4000001B54944415478DA63641860C038EA80A1E6007520CE05E26020164793
              FB08C4DB81780E10EFA3B603D480782510EB93E0D818205E460D071400711F12
              FF3E102BE2508B2E7716889D80F833B90E9800C479487C5D20BE0AC4AC40FC18
              88C5A0E2AF805816887F03B136105F46D2F30F882581F835A90EC0E67365247E
              31107743D9A540DC8B2477172D2440E9431488FF10EB00509CDFC022CE0EF525
              08AC05E240287B3D032461324043E72716BDB380388358079C67C09EE05E417D
              6D8564390C801C710C1A1A6238CC9502E217841C00CA6AD7196803FA19205187
              D7015380380BCA6E03E256A88F779368992B3444AA81B80A2A064A8828E50736
              073C872A02251C41247190432A89B4BC1D6A310CBC07627E289B899003FE41E9
              01770008503B0A487600B5C14B0648A134600E28628094AE781D004B84D406A0
              FA400088FF1372007236A4269001E267E882F428884055723A107FC526496A51
              8C0F8072CB5328FB2F103F00E28340FC0B9F26522B235CC0860192E54806A454
              C7F8001B0396AA96520780007A8304170015341DB470002921C144841AB21C00
              02C4344A69EA0018C0D52C4F01E279F47000D5C1A80306DC0100C1EB59217599
              4EA90000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
              87000002144944415478DAED99CF2B064118C7E77D39F891921CFD03CAC53FE0
              8C887078437171534A49E4A8DEF41E28C58593921C84F22AA5DEAB8323172EAF
              2B391092C2F7295B6B7B67776676769FDDDA6F7D4AFBCEEC3E9FD7ECECECBC39
              91F2E4B80BC804B80BC804B80B4892402798007DA05BD2E60E5C821370017EB8
              05EAC02C28820683FE876005DC730814C07EC82FC0C93998068F7108348132E8
              B154BC3B53602F4A810E50ADD16F0D94FEFE5E008B92FE2AED76C14C140254FC
              83A4A825CFB1628DE254DB514EC1B04D011A36AF92F6EDE0D973AC0D3C19B673
              B209E66C0954847CCC472540190467610582669B2886903B8DE0D35480E6F92F
              05499B37B13725BF7641023406D7152E1275EAC1B789C0BB307BC2DACE1838D2
              15A0B5CD8DE798C9105049D0798FC188AEC02A58F65CC4E42654293EE8BC2FA0
              5557E05AFC5F559A4C832A513D6F5E57C07BD3A45E8073085911702EC671135B
              13E0CA2DE84AB3C03CD848B380743DA4338D7285DEB9B7641FEA3CC838423B17
              BD7E0D7497127117DF2F028672521773BEC3464720CEE5344D953B605BF8BCC0
              E80AA8BED0A884F67C86C095B0B023A72A40B1B581D50C3E6C15AE2340A98870
              1B59F4054CDA2E5E47C06F5B452507609C538022DBD8524D0B78E3147024AA06
              FD28B4135DE016A084D9DCCD1BF4B12EE0C464764A940045E7070EFAAF0D244D
              C01DBF9F98A8F851A1F184E510604926C09D4C803BA917F805A8437D310371E9
              E30000000049454E44AE426082}
          end>
      end
      item
        Name = 'theme-light-dark'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000001344944415478DAA5D3BF4B824118C0F17B8336431C5A1A9D22C82568
              A8C139A8ADA9084521972083B296A6209006750827FBA1040EBA374441118144
              4344F527484D8A5360F53DDE27388EF77D79A1073EE0DDEBF3DCFBDCDDEBA87F
              86638D73184155C6FB38085BE011D318C3170EB1874B2CE25BFEB783337C9A05
              72B2EA0A9A323727F3B7A8C95C099BD8C59159E00EF38862880DD4D135DEF02F
              B9822DBB05B3C004DE90C56950B2570BAB6823861F7C58C9054C621BD7383737
              F1013388C826DA2BEBBE5FE5B796C08B7D8CEB18C5B14F725CDA5D42DFEB1EA8
              8095E3F2EC1E0B18F815084AD691471953787702920B721A66F21332CABD6057
              38310BE81B56348E4A6F5212CBCABDDE2DDCE0D9EB18758C23ADE486110D39D6
              A88C7BB8C09A5F013B52E8481B4A7A9E55EE7710AA40A8F80530DC4B111FB3E8
              570000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F4000002964944415478DAD597DD4B164114C6C70F880A82CA54A240A48B8CB0
              10B1EEBCF3520C21A4C43E04AB7F40D1B448AD34BAF383084A052989AEBA48FB
              13CA0A4ABD3044CA0F502A2C4B9222ED79D8B33AAC3B3BFBEEBE221DF8C1CEBC
              3BFB3C73663C33A6A82D8E94FFC14021C800439EFE83A0043CD80C0369E026A8
              95F62130E979A71D5C0099C936C0D94E805DDA4C67B5DF6F88B16D5ADF5B500C
              960C3AB93E13F035C0997FD5C44F83A73EE37AC03979FE2E267F1AC469B80954
              824736036D6A3DED0B60AFE1A35740976660B745DC8D0D4BE935B0A23D378821
              D3875F8061701734821F16F116703D2803DCEDAFB4F63130A2B577805230A0EC
              114ADC6BE03C78A8B577825F205D52C735BF0CCA258D1FE38A7B0D50A0C7C700
              DFB90FAAA59F7BE308988F2BEE35605B02777FB4826BC910F71AD04518FA26E4
              9FD90930084E81FE04C5F74B36176C066E833A79FE06F6D8666011A7F01CE806
              35DA3B1741AF9F011622563DB7BC56802711C599B54FE016B807A6A4FF192833
              6540C9ACC74096B473B4C1898ABB910ADE29A77CE781D520036E269A41BDB40F
              830F11C5190562625C79CE8B30C731076783E711C519556AE3C60D6D206ADAF5
              58DB74710C441567148165E51CF3CB510CC4116770FDDF885E41A206E28ADF01
              1D605ADA8FC1D9B006E28A2F2AE74ED1092E69FDC64214569C156E2684384FD1
              2FCAA925BFC167F0477FC964C056DBB9A6AC130D86F14CFB55F0D762D2D7002F
              901301E24C7DA3F4330BC7C151E5DC1B46C16B704026C093735A058429036794
              5338FC8ED47D6AFD2EC0F2CA7BC47B69E7833EE51CE58C2C497BC206DC4C4C1A
              C6B8A9E57DE1A4728E5AC676F05232C260495F0DD088FCAF19EF0D3C252B0CDF
              E46FBCBAA5DA3E14D500EFF8FD9677B8347D9B652069B1E506FE012683A4213B
              4474E90000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
              87000003D74944415478DAED995B884D511CC6D730432E0F0CE2450643AE7994
              4B2EA52477853021111322F71093913B91DCCAA590295253E281A661862979F1
              E22E067930EE6284197C5F6B6F76ABBDF65EEB9CBDF7A1E65FBF3A7B9DBDF77C
              DF3AEBF2FFAFC912FF7964655A40838118DF5D0C36829FFF8A81766009980EF2
              9CCFFB03EEA7F0D9E064A60D3407874181A76D18A808786634B8005E804E9934
              D013DC51DA86836B3EF7AE02E385FCA5F23DED75E007780E4680974919F013BF
              0E6CD5DCDF025C060334DFF7F5799F2E56800960880899433A031C369F95B6B7
              42F66E581C040B94B6B6E09D85F81DCEE79B605090099D014EBC02A56D0CB864
              20602758AEB475003596E2DDA802836D0CB0975FF9B43732ECC18742CE817160
              2058E308DB93827806E7D62E1B039BC15AA5ED18986768E02C980B3E39D79DC1
              24B03B6AF13A034F845CE7BD31199CD7BC632A382752DFB05216AF33E02784BD
              F84CF30E8EED65E074D2E26D0C7089FCEAB9EE063A0AF94B1D051FC06AF00D94
              09B3B53E6DF1E918E0FA7CD5E73E8EFF69E05712E26D0CF80DA136E0B5E7BA54
              C8C91A169189D719309DC45C56EB94E7F24570442A5E67C07419E5305A09A680
              5C500246812F4989D71930DDC872844CD24CC2567C36B8E174468DA3C78559F0
              A320030CBF54622CB8984227D98867CA704BC8D5ECBA903BB91AED8567EEE90C
              341372276DEC69E352991BA378A6DACC668F0BB993336D2F53EEE903EE7A1B82
              D2E93C2127A637582216C728DE8D5CA7C3EA3D1A47822BEACBC20A1A9A607296
              ED69F37D5184E2199B4091908B0917954270C4EF0F9994941C4ECCF167199A48
              573CE33EE8055A3AEF2BD289B329EA59942C0233405721D364556814E2DD304A
              DFA33C5689527CE206A2169FA88138C42766202EF1D5A08B900BC87CB0370E03
              7189676C01EB85CCB5B60BB970944469204EF10C375D604A91E3B431CDA88AC2
              40DCE2599ACE044341B9F21D97EFA7E918885B3C839B572DA814F2504B8DD6E0
              632A069210DF1BDC034DC06DC70887528D071EAEFD39A23435609B125784BE51
              2FDE2A4C0CD816234DC10130C75003C73CCF526B53301D6AC0563C7FFAEFCEE7
              5660A99025670FE5BE6A7006EC137F8B13EFB39119F0AB8A826A588E5B96815C
              C3CB8559B07061CACCC9DB2F6A03DCCE599BF63710AF1AAE778CF0DF50EAF0E0
              F1FD6247B85BF5059E42A76AC035C149592AC24F0F78F4325169E389DD4EA58D
              1DB14D69333D57B23660138784CC5DDC6011744A732FBF3BE1B966C555986903
              456083F3993B6965C8FDDEDDD62D23336A803DC825B43B786CF80CEF6509B950
              C85F30A306786AFD06BCB77C8EE7AC2C591F64DA40E2D16020D3F11B9FBFFC31
              C0CF8D1E0000000049454E44AE426082}
          end>
      end
      item
        Name = 'alphabetical-variant'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000000A34944415478DA6364A010300E1F03EC80580B88BF00F10A20FE03C4
              1950B9FF40BC15889F00310B104700310F105F03E2438C50CD07900C05191005
              C4FFD02C6302E265500360C001644026104F852AB80CB5510F6A4016D495D8E4
              2F017131B2015781581B88AF2019F0036AD33FA8B3910D808701CC0090461D22
              0C00015D6C0610E3854B507D58BD80CD00A202510988DD80780610BB42257693
              128D148161600000C5973717E547470C0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000011C4944415478DA63641860C038EA8051078C3A60D401486C3B20AE07
              625128FF3F105F00E212207E8DA4EE1216737E01F14A20EE46130799D503C406
              40CC04157B05C48D407C08D90120CB0FE071283B10FF86B2FFE151B7108813A1
              6C5620FE8947AD03C8113007EC0562473C8A4381782D110E6040F2693010AFC6
              A36E3F103BC31C701988B5D10CC804E2A950761610CF4073C01520D6A354FF40
              3820034ADF05E2DDD81C900DA5DD80D81F8F037E00713194DD0BC41C443A0005
              6073003680CD01D8402C102F1DF20EC882D2EE0C84A3A008CAEE63A06214502B
              118212DB342CFA0926C221930D7101BA1544D800D94531A8C27083B261C1EACA
              00C9DF2000CAEFBBA16C722B23985DA08A0DA3321A3030EA8051078C3A60D401
              00A3736F21A6FFCE160000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
              87000000DB4944415478DAED97410AC2400C453B9E455C170FE3C2238A6791AE
              8B47113145842269669CE9CC6FE43FC82A0DF9AF744A1B3AE70474000AA00350
              001D8002E800144007A0003A0005D001D616E8A52E52FB85EBEF5227A941E93D
              13F659F359FBC3D7F02D51FCA8844811B0E6B3F6CF0546C35CBB138702016D3E
              6BFF5CE0970013BB0281D5E62D81D8824DF429D0B0AFF2D702314A0EE1B57BBF
              CF5D0A4CE1CF520F0A80043E12D51F21F78798022DFA1430FA3136FF3167D1E4
              73BAA640951F9A1602557F295D420134144043013414404301341440E35EE005
              D70A6E31A5E128D10000000049454E44AE426082}
          end>
      end
      item
        Name = 'arrow-left'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000000554944415478DA6364A01030D2DA007620E600E28FE41800D27C0D4A
              CB906A004CB32210BB03F16E520C205A33360348D28C6E00B26610B882475F31
              CC70AA1A40B117A81288241B42B384846C08D949992840B10100D5DC16116BDF
              2DD30000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F4000000A44944415478DA63641860C038EA80510750A85F1E88958178DF4038
              0064F97D28DB1D8877D3D301C89683C0332096A19703D02DFF01C45240FC811E
              0EA0AAE5A43A80EA9693E2009A584EAC03686639310EA0A9E5841C806E3908D4
              00F17B32EDBAC380A5ACC0E5006C96530AAE00B1DE9071002E47D02D0A703982
              AE89902E8E181205114D1D31A42A239A3862483648B03982EE4D3264470C58A3
              942A60D401A30E000099533A21421E8D180000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
              87000000DA4944415478DAEDD8410A8330108561F574DD7809BBECA1EA293C9F
              112A9452259A99F7E6C10C045CFE1F8826E93BF1E9D90109600724801D900076
              4074C0A3ACB1AC9722608B5F3ECFEFB29E4A80EFF87DE6B22605C0BF78190034
              DE1A008FB70450E2AD00B4780B0035BE15408F6F018488BF0B08137F07102AFE
              2A205CFC15C0513C62865600333E01111026803384DB61A566AC3EA33484E58F
              8C82B0DE4AC0111E9B3928C26B3B0D43781E682008EF23A53B0271A87745A0AE
              55A46EE6A088BC5AAC4448BD42BF08D9EB75C824803D09604F02D8230F58011E
              BB3A310F58AEB30000000049454E44AE426082}
          end>
      end
      item
        Name = 'eye-settings'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000000DB4944415478DA6364A010300E4A034C81B80988DDD1C47702711D10
              9FC665001B10AF05626F24B1A7505A1A496C2B100703F12F64035881F80E10CB
              42F99F80580B889F41F952407C0D88F9A0FCC740AC02C4BF61062C07E270245B
              6480D80388E740F92940BC03889F20A95909C4912003D480F8069AB3412EF987
              16064C509B91BDA341A901EA302FAC00E23072BD000BC4BB508D640522C5D188
              0C4009A911EA0564B01D88EB81F80CB2204D92B2120324194F076257A8D86E20
              CE648024E77B840C00299CCA0089B6CB40FC1F88F51820D19A05C43390150300
              497B355CBA403A6C0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F4000001D74944415478DAED96CB2BC45114C7EFC84614561AAF853C13916423
              3BE10F904476165EE5959D57965E0B94D8092565654136B2934479E495D578AD
              44C802F99EE6FE9A5FB7DFEF74C7FCCC98CCA94F737FDDFB3BF77BCEEFCE39D7
              25426CAE88808880701210071A402DA800D1CAFC07D801AB6009BC382520034C
              836A3F83DB00EDE0FAA70228C219D0ECE7C6AACD833699216D0129E00CC4328E
              17C1A11C17814666ED2BC805373A02B2C039E3AC4366C6CA28D229E6DD1C70C9
              094802778C8332B027782B05BBCCBC1B3CD809F080648DC88BC10AC894CF57A0
              0E1C6864E216A45A09E807C38CF228D3E6FB366B4A4C22BE185F8360C42C201E
              3C322FD0816B92E30B53E4AA5126B2E57841F00733113C1902C64117B3B8174C
              684466CE54371863D64D821E43C0283D045900CDF585F213248067F3211C0043
              1A91FDCA21342C187F43AA8669C6832AC02D2CCAA5C99C284414E0BD9D0032AA
              D9A78C83404A719E50CABC5D334A0727C2D966449B7BD48960B4E33999994FAB
              49DD0B09A5B5C6CF8DD741A708E042A21A7D8E7AE1BD9295831865FE1D6C8335
              B00CDE749C86D5A5F47F0BA0C65125C705F2B752F81A14359E2D393E92BF9BC2
              DBC41C11404EF3E5D8E8092DC257905AC1AC1C1B3DE01814FE7901DF66D16D21
              7597F8EE0000000049454E44AE426082}
          end
          item
            Image.Data = {
              89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
              87000002BD4944415478DAED985BA84D4118C7BFBD1DB9444842945C921779D0
              7122259D3CBB26C98B72090F2491C40349492249CA8B92747239A5C883A45C0E
              F2202F924B1E5C5F7488C8F5FF6FD6CEECB1F75EDFACCB9E76677DF5AB3D6BCD
              E5FBAF3DF3CD7C539216B75268070A01A11D28048476A01010DA81424046FD8C
              064B4127980DC6D4A9F70EDC05D7C105F03EA480A1600BD80A8625ECA3171C06
              47C0E7660918018E825529C4D7B2336033F898A7809D607FC68EBBB60B1CC85A
              C038701F8CCDD9F98ABD05B3C0EB2C04CC03373C067F084E456D5E46CF2682F9
              600D98E9D117DBDC4C23603938A71CEC315864395DCF28A61B4C57F6BB027425
              11B0049C570EC275B15B59B762FBC4CC778D2D03177D04B4837B393A9F444407
              78A011C098AE0D659C36339C6703C15E31FB43397AF65B4CBCDF03BE39F51F89
              7E3A3184F7C609B805E6283B9C2CD5737E127816D3660A786195B9269E2BC7BB
              03E63612B058CC16AF31469B76ABCC2FFF55D976B054FF139C1ADAE8C423CBA5
              5A02F8FB97B213DA0670D22A1F04DB946D0F81ED56793D38E131763FF0C71540
              878E7B74320D3CB5CA3FE5DF9C8F33AE8936AB3C153CF1187B534570C9E9D4C7
              06801F29DADB62FB83EF1E6D5977502B0BE05A1BE20A582BD5733ACE424EA175
              628E2B5502CA91135A0BB988DBA28FF05F185D2856888AB15061943E5EAE146A
              6D644CF93A949D357B23EB1167936DB5A3C470F0294E008D89F96D65A7CD3ACC
              F1CBF7B80F1B1DA77984ED129DE57D9CE6D1BEBBD68BB88486C9C459E5207925
              342BA54152A5492917806BCAC16859A6949D1293CE6A93FAF19163A33C064F63
              4CE61909DFC455EC33D72AB68D14B3EBAECED8F1D362426FAE175BB6F16A7123
              D821263E2731DE8D1E1373D3F7254907595DEEF25F61A8E3A2E3DC9D50A7DE2B
              31176457C115F021EDC0C5F57A682B0484B63E2DC0CD81CB19BF2F0414029A21
              E02F814C9E3128CA8E9D0000000049454E44AE426082}
          end>
      end>
    Left = 422
    Top = 323
  end
end
