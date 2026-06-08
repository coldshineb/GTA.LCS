.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/SocialClubAPI$d;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/SocialClubAPI$c;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lrockstarmobile/RockstarUser;

.field public final synthetic f$3:Ljava/util/Date;

.field public final synthetic f$4:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/SocialClubAPI$c;ZLrockstarmobile/RockstarUser;Ljava/util/Date;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$0:Lrockstarmobile/SocialClubAPI$c;

    iput-boolean p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$1:Z

    iput-object p3, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$2:Lrockstarmobile/RockstarUser;

    iput-object p4, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$3:Ljava/util/Date;

    iput-object p5, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$4:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    iput-boolean p6, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$5:Z

    iput-boolean p7, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$6:Z

    iput-boolean p8, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$7:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 13

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$0:Lrockstarmobile/SocialClubAPI$c;

    iget-boolean v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$1:Z

    iget-object v2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$2:Lrockstarmobile/RockstarUser;

    iget-object v3, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$3:Ljava/util/Date;

    iget-object v4, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$4:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    iget-boolean v5, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$5:Z

    iget-boolean v6, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$6:Z

    iget-boolean v7, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;->f$7:Z

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v0 .. v12}, Lrockstarmobile/SocialClubAPI;->lambda$refresh$22(Lrockstarmobile/SocialClubAPI$c;ZLrockstarmobile/RockstarUser;Ljava/util/Date;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method
