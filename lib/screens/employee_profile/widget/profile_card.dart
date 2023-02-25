import 'package:employee_master/core/const_colors.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
    required this.screen_size,
  }) : super(key: key);

  final Size screen_size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screen_size.width * 0.75,
      child: Stack(
        children: [
          Positioned(
            bottom: 40,
            right: 80,
            child: Card(
              color: darkblue,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(10),
                ),
                // side: BorderSide(
                //   width: 5,
                //   color: Colors.blue,
                // ),
              ),
              child: Container(
                height: screen_size.width * 0.6,
                width: screen_size.width * 0.6,
                decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //   image: NetworkImage(
                    //     'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgSFRUSGBYYGBUcFRkZGBkcGRUZGBgZGRwZHRgcIS4lHB4rIxkZJzgmKy8xNTU1GiQ7QDs0Py80NTEBDAwMEA8QHhISHTQrJCs0NDQ0NDY0NDQ0NDE0NDQ0NDE0NDQxNDQ0NDQ0NDQxNDQ0NjQ0MTQ0NDQ0NDQxNjQ0Mf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQEDBAYHAgj/xAA/EAACAQIDBAcFBQYGAwAAAAABAgADEQQSIQUxQVEGEyJhcYGhB0JikbEyUnKCkhQjosHR8DNDc4Oy4SRj8f/EABgBAQADAQAAAAAAAAAAAAAAAAABAgME/8QAIBEBAQACAgMBAQEBAAAAAAAAAAECEQMxIUFREjJhIv/aAAwDAQACEQMRAD8A7NERAREQEREBERARPDk20Fzyvb1kJtAbQbSj+xUxzY1Hby7KgfIwJ2Jz7F7H20TpjKJHwtk9BR/nNT2ltrHYd+rfGOW45KiVADyIUEp+YCVt16WmO/btshOl203w2FfE01DNTNMlfvKaihh8iZzHDdNscn+eH/HTQ/PKFPrJ2n0+p16b4fGUWRXRlZ6V2UBhYsUPaW3dmkfqVNwsdEwWKSrTSrTIZHUMhHFWFwfWZE5J0D6UjDFsPWe9As3VuASKb37Vhv6tvtdxPfpv1HpbgWIC4qhc7rvb1MtLKi42J6JEjpFhL2/asLf/AFU/rM/D4lHF0dGHNWDD5iSqvxEQEREBERAREQEREBERAREQEREBETHxVJmUqrsjHcwAJB8GBBHdAvxOZbU6T7TwRy4inh3S9lq5HVX10OdWyoT90gG+6++Y1T2lYkjs0cMp4Emo3p2frK2yLTG3p1aab0h6e0KBalRH7RWGhCG1NDyepqL/AArc8wJzvavSPFYkFatd8p3onYQ+IXtMO5iRIpVAFgAANw5SLn8Xx4vqU2t0gxWJJ66s2Q/5adimByKg3b8xbykWFA0G6ViZ27bSSdEREJLRaIgUtPVFyjZkZkYbmRirD8y2MpKEQq23Y3T3E0bLVtiE+Ky1AO51Fm8GFz96dF2F0kw+LH7p+2BdqbdmonivEd4uO+cMvLlJ2VldWZGU3VlJDKeYI3S0ysUy45en0RE5z0a9oI0pY3KvBa40Q/6i+5+IdnffLOiI4IBBBBFwRuIPGaS7Y2WdvcRElBERAREQEREBERAREQEREC26BgQQCDoQRcEd4mi9K9m7LoDNUQJUYEolA5XbvFMHIBf3mAHfMrph00XD5qFDK+I3Md6Ubi/a5vbcvmeAPLK9ZnZndmdnN2Zjcse/+m4bhKZZTpphjb5eKgXMxXOFv2VZlZgO9lVQT5TyTKzwNT3D1MzbvQlYiEkREBERARKXlYCUAlG5z1ASZ6PdKa+CORGD0t5osTlA+BtTT8gV36XN5DS5hcQabrVVUZlN8rAFXU/aRgfdYad2h3gRLqq5Tcdn6P8ASrD4sWQlanGk9lcaa5eDjvUnvtJ+alhujOzsXSSslBArgMuRnplTxH7thZgbg8iJseCwa0lyK1Uj43dyPzOSfWbRzXXplxESUEREBERAREQERLVViFJVcxA0W4FzyudBAuTQemfTYUw2HwrA1NQ9QWK0uBCncX9F466Tz0hw22MUGpomHw9E37IrnO4+J1Q2B+6tu8kTQ9vdF6+EFMV3oXctlSmWayJa5JKrpcqLW490rlb6Xwkt8o6nrrrqSddSSTcsSdSSbm/fPcASkydCjmVAi0rARECEkRECjbpUQZ5TcPCEKtKyjbpWAlF5SsoYFYiUBhLoPss2oQ1TBsdDerS7jcLUUctSreJadKnCOjWM6nGYepew61FbvWr+7N+4Zwfyzu81xu45uSayViIllCIiAiIgIiICIiBScW6d7Q67G1LHs07Ul/LfP/GWH5ROx4quERqh+yqsx8FBJ+k+fHqFyXb7Tlmb8TEsfUmUzvhrxTztSUEqZQTNsqDE8U93mfrPcBPKGVBnjDnQ9zMPUwLkREJJ5E9SjQggSs8MbEd5/kYHuUMrEJJ497xH0/8As9ieH4Hv+ukIUrlgrFdGAJXuYaj1An0PgsQKlNKo3OiMPBgGH1nz2Z2zoLVzbPwp+7RpofGmMh/4y+DLlnTYIiJoxIiICIiAiIgIiIGudPcT1eBrniyqg/3GVD6MflOLzqPtVr2w9JPvVgT4IjH6lZy0zLLtvxzwGVM8sdJ6lWjxRPZHgJ7ligeyvyl5jYE8gYI8Ye5Hfc2+cyMZheqqvT7kb9SDN/EGlzolRL4ilTfU9d2vydo/8TM/pnh8mJU/fRl/Q2YejiRvzonW0RE8U6lyw4qbH5Ag/Iz3JCeW4eM9S3UvmXlcg+akj6GCrks127SD4v5W/nLxMpicEep/aeC1kRe+6Mz/AFT1gql9bd0rPBPbGhsQQDwuNbX52+kMe2O8H0I/qYFwTxV3Sqn+c81D2fl9YFydc9mVS+AVb6pUrr4XqM49GE5GZ0b2T4wZa9C+oZKi+DrkNvDIv6pbHtnyTw6LERNWBERAREQEREBESE6WbfTBYd8Q9iw0pKTbrKhByr4aXJ4AE8IHP/aZtMVcUtBTcUEIflnq5SV8QqofzTTCdD4GSWy+j+Mxa1MRlZEIqVKldwR1rEMxyIdWudAfsgcTaxiqRugPNR6reY5d7dGFmtPVQ9m/cJcltRdfFfqJ4wlTMgJ3gWPiJC62zZVfT7JJ8r3H0iq7lTlVNQd7HiPwyY2ng8j4ckdismHvyazqjD9IH6ph4nCNh6z4d/ca6E+9TazKfkR535RKqzdiHEU9ouq4dajo1R+rWqFHaTg7KODjfaZfTrHO4p1KmExNAowJZgrpa1iOsQm3ubxwmyYbC5Nru1tHwuceRRD9JObfwAr4d6fNWt3XG/y3+UrcpuXSZjdXy48RZw4+yygE8iNVPncj5TImR0fwhxCVqJ0cU2IHJ6bobeR08jMOg+Zb8dx7iN8sRcmRi6JSnQJ/zDWcfhXKi/PtHzlmnSZ2Wmn23ZUT8TkKD4C9z3CTnTumqV6NBRdaeGAA33BbIBbiTk9ZHtNavWxSspyrUc5kVcikqWzZipbdeynTfrNi2/SxSbPSm+ESkiOjM7V1Z2dn1ORQQAS3PQWmwbO2EBUwuHIGXDIa9YAdk16h7C/lyEjuUc5m+0Qf+BUvwaifG1RI/U3FdXVrR6eAxD4FqvVUCqVS+YVGz9hcrAJksRbMPtDUyKL3KG1r34g7xOubE2X1eDTDuBmydvlnftv/ABEzlVbAlHqU9f3DP5jrEpr6OPlEu9ps0t4d7rfvb6mHPY8h/KeKFMoHpnejOp78ul/SVP2B+EfSSel+S/s/2n1WKoOTZag6pzfhUtk/jCDzMhab3APObDV6KMcFRxuHDG9NevRdWV0JXrk81BYDcRccZOKudnVdtiRHRvawxWGp4gWuy9sD3XXsuPDMDbusZLzZzkREBERAREQExMTgabsruiMyXyFlDZSd5F9x75lxAjOkNcJha9Q+7RqnzCG3rOAUdVyj7oHpafQO2NnLiKRouSEYr1gG9kVgxXuDWseNibWM490kwltp1aKgAPWw6gAWAV1p3t4BiZTONOOtfwj3RT3fSXcXhepqGnwdFdDzzA3/AIg0v43CrRxNWiLZBWun3cjODYdwBy3+EzaOluys2FTEIO1Rds/Pq3ax+RynwJmVvltrwkMdslq+AommAatNEemCbZtASt+F9D4qJD+0Q4eoorUqtNq9IZaiJ2j1Z17WUHLlJJ1tozTK6O4Q1jhkxzO2GejSGHRGK0WcKAUr27TOeAJynXThN76QbKp/sbYZEVKRNFWVAEAp9amcDLu7OaWxw97Uyz9aagnTXZ5dKhquHCFLmjV3MUYi+TmsmqO0RiFz4StRqAfaUm3kdLqfETl3TjZFPB4v9nokshCEZjdkLGxS44jQ68CPGbh7KNmhjiSw7IFDIeKuTVzFW4aZbjjpe8i8c6hOSzyj8Jh2w21UzIUTFZzlNrBmRsw00PbCn84kT0n2f+zYt0t2KnbTz3j5/UTonS3Y7VOrqJ2quHq06iW0zKGXOh8VF7c1Ewunux+vw/WIO3Ru696e+vy1/LK78+V/Xhr3QPB58SahGlFLj8b3Rf4Q/wAxMyrhhiNq1KhBZMKlK4GuZwMyL+tmb/bEzPZ5TCYV6zX7dR2OmuWmAgA56qx8Wk5sTZ3VK7t/iVqjVKp5M25L8lFl8ieMi3zU9mFqlM9R0FNWYu7u6i+gA04AAAa23SD2z0x2ewCPWLgOjEIjsCUYOBmAykXA4zato7ERqb1XAquiO1JTqiMFJUhNzNu7R15WnKPaB0Zo4FaD0GdxVXtB2DFbAHNcAaNfjxEvOP3Wd5PUbhQ9oWBb36q21Jak9gOZsDpLGzsNh8ViMTVp1qdRKpwpyqe0OrYO91OtjkXhIH2ZYYjH0mAt2Kpb8JTd+orN46a7DwxVWTDA4xzai9ImkysN9R6ibkW9ze97gDUyZhNblRc7vVjmXSGlkr4lebg/rVb+pMwEqjKl+Wvlp/ObPtTYzviTRdw79UGd8uXOQlg5A3dpk+Uk9ndDMP1aVMTUbMdLBwiA8LG1ydOJ1tulf1JGmr20LBvlJpngdP79Z2v2aVc2AQfdeuPD967D0YTT8R0KzK9FHDV1Bq4VjoaqdlalJzuuDksw3Fr6AsJsHssqstLEYdwyvTrXKMLMoZEFiD3q3zmmPe2WfWvjbsBs2nRLmkuQVGzso0XOdCwHAmwvbTSZ8RNGRERAREQEREBERATluPwhfbVRx9ml1DN+J6aIg+Zv+UzqMgtqbMCU69WmpNV2p1Wt9pzRyFUH5Uygc2POVym4tjdVzjpnsm7q4GodARbejOLG3IZiD+KbRsbLVpNTcXR6akg+8rplb0t85e2rQDqldCGXKd2uZHysG8Bb1kNs7FtRqU0K9jPkD3FslUnItt4KuUXlltre85t7mnX/AKndi7M6nDrhnIcJmFyNGUsWFweV/STXXBkalUXMrKVbmwIsQeenGWIkTOy+FbhL253juhldWKoFqjMSjlwpy8M4bUNzK3vv03TdujGz/wBjw/VAhqjsWqtbs5iAAFB4AADXfYm2tpnRJ/d9H4l7VJ4yhERKrLOFwqU0FNFCoL2UaAXJJ9SZeiIF+hiSum9eX9JzbbPRaqtVwiVKtI/4RzKSg92mwZr2XcCLiwG4zoUS37utK/ib213oRsRsMXr1QOtZcqoCDkQkM125khdBuy79dNlq1CxzHf8A3pPESLlbNExku0Jitn5alfEk3LpSRByC2J+Zt+mR2JXNUYtqEARB91QoznxZr37lXlJbbeKyFFALEXcqLdq2ijXTUk/KRuzKLvVXNxzvUA1UEsGAB7ibX4i8heNh2ahOIoHitCtfwJoC3zt8pPDDKHNQAByLEj3gN1+dpC9HL1KtbEX7AIo0uTZCTVceLnJ/tTYp1YTUjjzu8qrERLqkREBERAREQEREBERA1vE4Q0GZhrQYlt3+AxN2B/8AWTc3925922XE2ls9alJ0QKrMpyMANHGqNfuIBm3SDrbNNM3pC9M70Hud6fD8PDhymOeHuNsM/VYuBxPWU0qWtnVSR90kaqe8G48pfmDs+kabVKRBAzmogOhy1SWO/kwf0mdMLNVtLsiIhJETD2rhnqUmRGZHO51NmUjUEHxA0Oh3GBmRMfAO7U0NRQr5RnA3Bhobd19R3ETIgIiICIlrF1wiNUIJCqTYb2tuA7ybDzgQeLRnquyqSAVQEfANfDtM8kqeBYqMPTJV3H7yoN9NdzMPi3hRz11AMrglZF6rq6pq727DhGdjckVLZctzvvNjwWGyLY6sbFm5m3oOQmuOFt8s8+TWOouYTDLTRaaKFRFCqo3BVFgJfiJ0OYiIgIiICIiAiIgIiICIiAiIgQnSFcmTEe6py1PwOQM35WCnwLS1JurTDKVYAqQQQdxB3gia8lM0m6h7kAE0mPvoOBJ99dAeejcSBhy4+23Fl6XoiJi3Igm2pmMmORjZc7d4Ryv6stvWBkxPL1La2byUn0EI4YXF/MEH5HWB6iIgJjFOtr06O8KRWq9yoewp5FnsRzFJpcr1QguQSbgKo1ZmO5QOZ/vSSWycCaYZ2t1lQhntqFsLKg+FR8yWOl5px47u2fJlqaSUrETpcxERAREQEREBERAREQEREBERAREQExcXhlqLla+8EEaFSNxB4H/sTKiBq71zTqChVIDsCabblrKtr5eTi4uvmLjdkSO6b0Az0MwuMtYeeakwI5EFdDwkXg9rPS7NTNUp8HAvUQfEo+2veO1zDamcueMmWo68LbjutlnmrmscuXNwzXt521lKFdXUOjKysLqykEHwInuUWW6DOR21VT8LFgfMgH0lyIgJbr11S19WY5UUfadjrlUcToTyABJsATMPaG1Fp9hRnqfdBsF5F290d288BIfBqz4ihUdsz9autrBRqSqr7q+psLky2M3ZEXerY3TZ+zyD1tSxexCgfZpg7wPiPFuPCwknETqkkmo5LbbuqxESUEREBERAREQEREBERAREQEREBERAREQNW6ZLrRPI1PULNdm7bXS5S4uO1fzAmv4rZQOqG3wnd5HhObl/p18N/wCUMgZGL0nKMdWsLo5+NNx8RY98kaPSELpXRk+NAzof0gsnmLd8xKtJkNmBB7/71niU21uMqWfpDh/dfOeSI7H0GnnaYOK2pVqaJ+6TidGqN4e6n8R8JjyoHCQTH6t06YUWA5nmSTvJJ1JPMzM2YP39LuqL9DMjC7LZtX7I5e8f6SXwuGVSiqLAMp8bX3njJx/qK52fmxscRE7HCREQEREBERAREQEREBERAREQEREBERAREQMHaKXC+JkaRJ1kB3y0+GU8Jlnx3K7jXDkmM1UK9MMLMARyMjq2yVOqMV7jqP6zZGwA4EiW22e3AiZXjy+Npy4/WtLsduLrbuBMkMNg0TcNfvHf/wBSUGz25iXF2eOJiceXwvLj9R9pkYakcynkRJBMMo4fOXQol8eLXmssuXc1HuIibsSIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgf/Z',
                    //   ),
                    // ),
                    ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 80,
            child: Card(
              color: lightblue,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: SizedBox(
                height: 50,
                width: 50,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
