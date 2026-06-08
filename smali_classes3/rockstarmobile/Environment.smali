.class public Lrockstarmobile/Environment;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# instance fields
.field public final id:Ljava/lang/String;

.field public final rockstarCloudServicesBase:Ljava/lang/String;

.field public final rockstarMobileApiKey:Ljava/lang/String;

.field public final rockstarMobileBase:Ljava/lang/String;

.field public final rockstarMobileLauncherGameServicesBase:Ljava/lang/String;

.field public final rockstarTitleGameServicesBase:Ljava/lang/String;

.field public final scAuthClientId:Ljava/lang/String;

.field public final sentrySampleRate:D

.field public final socialClubAuthHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrockstarmobile/Environment;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lrockstarmobile/Environment;->rockstarMobileBase:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lrockstarmobile/Environment;->rockstarMobileApiKey:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lrockstarmobile/Environment;->socialClubAuthHost:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lrockstarmobile/Environment;->rockstarMobileLauncherGameServicesBase:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lrockstarmobile/Environment;->rockstarCloudServicesBase:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lrockstarmobile/Environment;->rockstarTitleGameServicesBase:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lrockstarmobile/Environment;->scAuthClientId:Ljava/lang/String;

    .line 10
    iput-wide p9, p0, Lrockstarmobile/Environment;->sentrySampleRate:D

    return-void
.end method

.method public static getEnv(Ljava/lang/String;Ljava/lang/String;)Lrockstarmobile/Environment;
    .locals 29

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android-mobile"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v2, v2, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v2, v2, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4
    sget-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "gtavc.de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v13, v5

    goto :goto_0

    :sswitch_1
    const-string v2, "gtasa.de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "maxpayne"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v13, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "gta3.de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v13, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "gtavc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v13, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "gta3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v13, v11

    goto :goto_0

    :sswitch_6
    const-string v2, "gtactw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v13, v12

    :goto_0
    packed-switch v13, :pswitch_data_0

    move v0, v11

    goto :goto_1

    :pswitch_0
    move v0, v12

    .line 18
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "ht"

    const-string v15, "/11/gameservices"

    const/16 v16, 0x0

    const-string v17, "/11/"

    const-string v18, ".ros."

    const/16 v19, 0x5

    const/16 v6, 0xa

    const-string v20, "//"

    const-string v21, ":"

    const-string v22, "https"

    const/16 v23, 0x4

    const/16 v7, 0x9

    const/16 v24, 0x8

    const/16 v25, 0x3

    const/4 v9, 0x7

    if-nez v13, :cond_a

    const-string v13, "local"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 38
    new-instance v5, Lrockstarmobile/Environment;

    if-eqz v0, :cond_7

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://prod.ros.rockstargames.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_7
    move-object/from16 v12, v16

    const-wide v14, 0x3fa999999999999aL    # 0.05

    const-string v6, ""

    const-string v7, "https://mobileapi.rockstargames.com"

    const-string v9, "signin.rockstargames.com"

    const-string v10, "https://prod.ros.rockstargames.com/mobile/11/gameservices"

    const-string v11, "https://prod.ros.rockstargames.com/cloud/11/cloudservices"

    move-object v13, v8

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v15}, Lrockstarmobile/Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-object v5

    :cond_8
    move v13, v0

    .line 45
    new-instance v0, Lrockstarmobile/Environment;

    const/16 v26, 0x2

    new-array v10, v6, [Ljava/lang/String;

    aput-object v14, v10, v12

    const-string v14, "tps"

    aput-object v14, v10, v11

    const-string v14, "://mobi"

    aput-object v14, v10, v26

    const-string v14, "leapi"

    aput-object v14, v10, v25

    const-string v14, "-"

    aput-object v14, v10, v23

    aput-object v1, v10, v19

    const-string v14, ".rocks"

    aput-object v14, v10, v5

    const-string v14, "targames"

    aput-object v14, v10, v9

    const-string v14, ".co"

    aput-object v14, v10, v24

    const-string v14, "m"

    aput-object v14, v10, v7

    .line 46
    invoke-static {v4, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-array v14, v9, [Ljava/lang/String;

    const-string v27, "de"

    aput-object v27, v14, v12

    const-string v27, "v.s"

    aput-object v27, v14, v11

    const-string v27, "cauth"

    aput-object v27, v14, v26

    const-string v27, ".rock"

    aput-object v27, v14, v25

    const-string v27, "stargames"

    aput-object v27, v14, v23

    aput-object v3, v14, v19

    const-string v27, "com"

    aput-object v27, v14, v5

    .line 48
    invoke-static {v4, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move/from16 v27, v9

    new-array v9, v7, [Ljava/lang/String;

    aput-object v22, v9, v12

    aput-object v21, v9, v11

    aput-object v20, v9, v26

    aput-object v2, v9, v25

    aput-object v18, v9, v23

    const-string v28, "rockstargames."

    aput-object v28, v9, v19

    const-string v28, "com/mobile"

    aput-object v28, v9, v5

    aput-object v17, v9, v27

    const-string v28, "gameservices"

    aput-object v28, v9, v24

    .line 49
    invoke-static {v4, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/String;

    aput-object v22, v6, v12

    aput-object v21, v6, v11

    aput-object v20, v6, v26

    aput-object v2, v6, v25

    aput-object v18, v6, v23

    const-string v18, "rockstargames"

    aput-object v18, v6, v19

    aput-object v3, v6, v5

    const-string v3, "com/cloud"

    aput-object v3, v6, v27

    aput-object v17, v6, v24

    const-string v3, "cloudservices"

    aput-object v3, v6, v7

    .line 50
    invoke-static {v4, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_9

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "com/"

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v13, v13, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v13, v13, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v22, v7, v12

    aput-object v21, v7, v11

    aput-object v20, v7, v26

    aput-object v2, v7, v25

    const-string v2, ".ro"

    aput-object v2, v7, v23

    const-string v2, "s."

    aput-object v2, v7, v19

    const-string v2, "rockstarg"

    aput-object v2, v7, v5

    const-string v2, "ames."

    aput-object v2, v7, v27

    aput-object v3, v7, v24

    invoke-static {v4, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    :cond_9
    move-object v5, v9

    move-object v2, v10

    move-object/from16 v7, v16

    const-wide/16 v9, 0x0

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-direct/range {v0 .. v10}, Lrockstarmobile/Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-object v0

    :cond_a
    move v13, v0

    move/from16 v27, v9

    const/16 v26, 0x2

    .line 54
    new-instance v0, Lrockstarmobile/Environment;

    new-array v1, v6, [Ljava/lang/String;

    aput-object v14, v1, v12

    const-string v9, "tps"

    aput-object v9, v1, v11

    const-string v9, "://mobi"

    aput-object v9, v1, v26

    const-string v9, "leapi"

    aput-object v9, v1, v25

    const-string v9, "-"

    aput-object v9, v1, v23

    aput-object p0, v1, v19

    const-string v9, ".rocks"

    aput-object v9, v1, v5

    const-string v9, "targames"

    aput-object v9, v1, v27

    const-string v9, ".co"

    aput-object v9, v1, v24

    const-string v9, "m"

    aput-object v9, v1, v7

    .line 55
    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-array v9, v5, [Ljava/lang/String;

    aput-object p0, v9, v12

    const-string v10, ".scaut"

    aput-object v10, v9, v11

    const-string v10, "h.r"

    aput-object v10, v9, v26

    const-string v10, "ockst"

    aput-object v10, v9, v25

    const-string v10, "argames.c"

    aput-object v10, v9, v23

    const-string v10, "om"

    aput-object v10, v9, v19

    .line 57
    invoke-static {v4, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/String;

    aput-object v22, v10, v12

    aput-object v21, v10, v11

    aput-object v20, v10, v26

    aput-object p0, v10, v25

    aput-object v18, v10, v23

    const-string v14, "rockstargames."

    aput-object v14, v10, v19

    const-string v14, "com/mobile"

    aput-object v14, v10, v5

    aput-object v17, v10, v27

    const-string v14, "gameservices"

    aput-object v14, v10, v24

    .line 58
    invoke-static {v4, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/String;

    aput-object v22, v6, v12

    aput-object v21, v6, v11

    aput-object v20, v6, v26

    aput-object p0, v6, v25

    aput-object v18, v6, v23

    const-string v14, "rockstargames"

    aput-object v14, v6, v19

    aput-object v3, v6, v5

    const-string v3, "com/cloud"

    aput-object v3, v6, v27

    aput-object v17, v6, v24

    const-string v3, "cloudservices"

    aput-object v3, v6, v7

    .line 59
    invoke-static {v4, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_b

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "com/"

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v13, v13, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v13, v13, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v22, v7, v12

    aput-object v21, v7, v11

    aput-object v20, v7, v26

    aput-object v2, v7, v25

    const-string v2, ".ro"

    aput-object v2, v7, v23

    const-string v2, "s."

    aput-object v2, v7, v19

    const-string v2, "rockstarg"

    aput-object v2, v7, v5

    const-string v2, "ames."

    aput-object v2, v7, v27

    aput-object v3, v7, v24

    invoke-static {v4, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    :cond_b
    move-object v4, v9

    move-object v5, v10

    move-object/from16 v7, v16

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object/from16 v3, p1

    move-object v2, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lrockstarmobile/Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x49ac976e -> :sswitch_6
        0x30919f -> :sswitch_5
        0x5e1aac1 -> :sswitch_4
        0x1402cf30 -> :sswitch_3
        0x193a4d7b -> :sswitch_2
        0x6ff35b8d -> :sswitch_1
        0x701e8ace -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
