.class public final synthetic Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/HashMap;

.field public final synthetic f$3:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

.field public final synthetic f$4:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

.field public final synthetic f$5:Lrockstarmobile/utilities/HttpAPI$Constructor;

.field public final synthetic f$6:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    iput-object p4, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$3:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    iput-object p5, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$4:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    iput-object p6, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$5:Lrockstarmobile/utilities/HttpAPI$Constructor;

    iput-object p7, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$6:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call(Lrockstarmobile/RockstarUser;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget v1, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    iget-object v3, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$3:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    iget-object v4, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$4:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    iget-object v5, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$5:Lrockstarmobile/utilities/HttpAPI$Constructor;

    iget-object v6, p0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;->f$6:[Ljava/lang/Object;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lrockstarmobile/RockstarMobileAPI;->lambda$requestWithUser$0(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;Lrockstarmobile/RockstarUser;)V

    return-void
.end method
