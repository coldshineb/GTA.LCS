.class public Lrockstarmobile/SocialClubAPI;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;,
        Lrockstarmobile/SocialClubAPI$b;,
        Lrockstarmobile/SocialClubAPI$StatusCallback;,
        Lrockstarmobile/SocialClubAPI$RefreshCallback;,
        Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;,
        Lrockstarmobile/SocialClubAPI$c;,
        Lrockstarmobile/SocialClubAPI$d;
    }
.end annotation


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;

.field private static refreshResultLock:Ljava/lang/Object;

.field private static refreshResultQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final requestError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "SocialClubAPI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/SocialClubAPI;->log:Lrockstarmobile/utilities/Log;

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCAPI_REQUEST_ERROR"

    const-string v2, "Could not complete request, try again later"

    invoke-static {v1, v2, v0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrockstarmobile/SocialClubAPI;->refreshResultLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allPoliciesAccepted(Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->overrides()Lrockstarmobile/GCState$ToolOverrides;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lrockstarmobile/SocialClubAPI$a;->b:[I

    iget-object v0, v0, Lrockstarmobile/GCState$ToolOverrides;->acceptedTermsResponse:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    new-instance v1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda20;-><init>(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;)V

    .line 29
    new-instance p1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda21;

    invoke-direct {p1, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda21;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    new-instance v0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda22;

    invoke-direct {v0, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda22;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    const-string v2, "eula"

    invoke-static {p0, v2, p1, v0}, Lrockstarmobile/SocialClubAPI;->legalPoliciesGetAcceptedVersion(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    .line 35
    new-instance p1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda23;

    invoke-direct {p1, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda23;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    new-instance v0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda1;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    const-string v2, "tos"

    invoke-static {p0, v2, p1, v0}, Lrockstarmobile/SocialClubAPI;->legalPoliciesGetAcceptedVersion(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    .line 41
    new-instance p1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    new-instance v0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda3;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    const-string v2, "pp"

    invoke-static {p0, v2, p1, v0}, Lrockstarmobile/SocialClubAPI;->legalPoliciesGetAcceptedVersion(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    .line 48
    new-instance p1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda4;

    invoke-direct {p1, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda4;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    new-instance v0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda5;-><init>(Lrockstarmobile/SocialClubAPI$b;)V

    invoke-static {p0, p1, v0}, Lrockstarmobile/SocialClubAPI;->legalPoliciesVersions(Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method private static createScAuthToken2(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Ljava/lang/String;",
            ">;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "true"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v2

    iget-object v2, v2, Lrockstarmobile/Environment;->rockstarMobileLauncherGameServicesBase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/socialclub.asmx/CreateScAuthToken2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xa8c0

    .line 4
    :try_start_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?ticket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "&audience="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "Game,Sc"

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "&ttlminutes="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "&rememberedMachineToken="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&rememberMe="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&keepMeSignedIn="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&userData="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 16
    sget-object p1, Lrockstarmobile/SocialClubAPI;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    move-object v3, v1

    .line 19
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda19;

    invoke-direct {v6, p3, p2}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda19;-><init>(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;)V

    const-string v2, "GET"

    const/16 v4, 0x1e

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lrockstarmobile/SocialClubAPI;->request(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method private static createTicketScAuthToken2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/auth.asmx/CreateTicketScAuthToken2"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?platformName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&scAuthToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&rememberedMachineToken="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 7
    sget-object p2, Lrockstarmobile/SocialClubAPI;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    :goto_0
    move-object v2, p0

    .line 10
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p0, "SCS-MFAMachineFingerPrint"

    invoke-virtual {v4, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda12;

    invoke-direct {v5, p5, p4}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda12;-><init>(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;)V

    const-string v1, "GET"

    const/16 v3, 0x1e

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lrockstarmobile/SocialClubAPI;->request(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method public static exchangeMobileLauncherTicketForTitleTicket(Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 7

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v0

    iget-object v1, v0, Lrockstarmobile/Environment;->rockstarTitleGameServicesBase:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v2, p0, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    iget-object v3, p0, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;

    iget-object v4, p0, Lrockstarmobile/RockstarUser;->fingerprint:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lrockstarmobile/SocialClubAPI;->createTicketScAuthToken2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void

    :cond_0
    move-object v6, p2

    .line 5
    new-instance p0, Lrockstarmobile/utilities/HttpAPI$Error;

    const-string p1, "no gameservices deployed for title"

    const-string p2, ""

    const-string v0, "no-gameservices"

    invoke-direct {p0, v0, p1, p2}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, p0}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method

.method private static getSubscriptionState(Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;",
            ">;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->overrides()Lrockstarmobile/GCState$ToolOverrides;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    sget-object v1, Lrockstarmobile/SocialClubAPI$a;->a:[I

    iget-object v0, v0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_1
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_2
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->INACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_3
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_4
    :goto_0
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v0, :cond_5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v1

    iget-object v1, v1, Lrockstarmobile/Environment;->rockstarMobileLauncherGameServicesBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entitlements.asmx/GetGtaPlusStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?ticket="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 41
    sget-object v0, Lrockstarmobile/SocialClubAPI;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    :goto_1
    move-object v4, v1

    .line 44
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda0;

    invoke-direct {v7, p2, p1}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;)V

    const-string v3, "GET"

    const/16 v5, 0x1e

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lrockstarmobile/SocialClubAPI;->request(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void

    :cond_5
    move-object v8, p2

    .line 82
    new-instance p0, Lrockstarmobile/utilities/HttpAPI$Error;

    const-string p1, "the getsubscriptions api call is currently not implemented"

    const-string p2, ""

    const-string v0, "not-implemented"

    invoke-direct {p0, v0, p1, p2}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, p0}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$10(Lrockstarmobile/SocialClubAPI$b;Ljava/util/HashMap;)V
    .locals 3

    .line 3
    const-string v0, "version.eula.en"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const-string v2, "version.eula"

    invoke-interface {p0, v2, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    .line 5
    const-string v0, "version.tos.en"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const-string v2, "version.tos"

    invoke-interface {p0, v2, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    .line 7
    const-string v0, "version.pp.en"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    const-string p1, "version.pp"

    invoke-interface {p0, p1, v1}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$11(Lrockstarmobile/SocialClubAPI$b;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 1

    .line 1
    const-string p1, "version.eula"

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    .line 2
    const-string p1, "version.tos"

    invoke-interface {p0, p1, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    .line 3
    const-string p1, "version.pp"

    invoke-interface {p0, p1, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$3(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 3
    const-string p2, "eula"

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "version.eula"

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 4
    const-string p2, "pp"

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "version.pp"

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 5
    const-string p2, "tos"

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "version.tos"

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 6
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$4(Lrockstarmobile/SocialClubAPI$b;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    const-string v0, "Response.Version"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const-string v0, "eula"

    invoke-interface {p0, v0, p1}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$5(Lrockstarmobile/SocialClubAPI$b;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 1

    .line 1
    const-string p1, "eula"

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$6(Lrockstarmobile/SocialClubAPI$b;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    const-string v0, "Response.Version"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const-string v0, "tos"

    invoke-interface {p0, v0, p1}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$7(Lrockstarmobile/SocialClubAPI$b;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 1

    .line 1
    const-string p1, "tos"

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$8(Lrockstarmobile/SocialClubAPI$b;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    const-string v0, "Response.Version"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const-string v0, "pp"

    invoke-interface {p0, v0, p1}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$allPoliciesAccepted$9(Lrockstarmobile/SocialClubAPI$b;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 1

    .line 1
    const-string p1, "pp"

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Lrockstarmobile/SocialClubAPI$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$createScAuthToken2$1(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "Response@ScAuthToken"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    const-string v2, "invalid"

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object p2, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    invoke-direct {p1, v2, p2, v1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 7
    :cond_0
    const-string v3, "Response.Status"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 8
    const-string v3, "1"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {p1, v0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2
    :goto_0
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object p2, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    invoke-direct {p1, v2, p2, v1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method

.method static synthetic lambda$createTicketScAuthToken2$0(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Ljava/util/HashMap;)V
    .locals 6

    .line 1
    const-string v0, "Response.Ticket"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    const-string v2, "invalid"

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object p2, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    invoke-direct {p1, v2, p2, v1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 7
    :cond_0
    const-string v3, "Response.RockstarAccount.RockstarId"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 9
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object p2, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    invoke-direct {p1, v2, p2, v1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 13
    :cond_1
    const-string v4, "Response.RockstarAccount.Email"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    .line 15
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object p2, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    invoke-direct {p1, v2, p2, v1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 19
    :cond_2
    const-string v5, "Response.Status"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 20
    const-string v5, "1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 26
    invoke-interface {p1, v0, v3, v4}, Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 27
    :cond_5
    :goto_0
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object p2, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    invoke-direct {p1, v2, p2, v1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method

.method static synthetic lambda$getSubscriptionState$2(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Ljava/util/HashMap;)V
    .locals 5

    .line 1
    const-string v0, "GtaPlusStatusResponse.GtaPlusSubscriptionStatus"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, ""

    const-string v1, "invalid"

    if-nez p2, :cond_0

    .line 3
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object p2, Lrockstarmobile/SocialClubAPI;->requestError:Ljava/lang/String;

    invoke-direct {p1, v1, p2, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 7
    :cond_0
    sget-object v2, Lrockstarmobile/SocialClubAPI;->log:Lrockstarmobile/utilities/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gtaplusstatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "InvalidRockstarAccount"

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Active"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "GtaPlusSubscriptionNotFound"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "PreviouslyActiveDuringGracePeriod"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "Inactive"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "UnknownRequiresAuthToken"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "PreviouslyActive"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 31
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-direct {p1, v1, p2, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 32
    :pswitch_0
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 33
    :pswitch_1
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 36
    :pswitch_2
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->INACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 42
    :pswitch_3
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 48
    :pswitch_4
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-direct {p1, v1, v3, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 49
    :pswitch_5
    sget-object p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-interface {p1, p0}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x32158cf6 -> :sswitch_6
        -0x1b287fe1 -> :sswitch_5
        -0xb57fde7 -> :sswitch_4
        0x552c08b -> :sswitch_3
        0x561b98ae -> :sswitch_2
        0x6463aa7a -> :sswitch_1
        0x74946b26 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$refresh$15(Ljava/util/LinkedList;Lrockstarmobile/SocialClubAPI$StatusCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lrockstarmobile/SocialClubAPI$StatusCallback;->onStatus(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$refresh$16(Ljava/util/HashMap;Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$RefreshCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-string v2, "done"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v3, "scAuthToken"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "scServicesTicket"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "acceptedAllPolicies"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "subscriptionState"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "gameTicket"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v9, Lrockstarmobile/RockstarUser;

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 10
    const-string v2, "scAuthTokenExpires"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/util/Date;

    .line 11
    const-string v2, "scAuthTokenRefreshed"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/Date;

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 13
    const-string v2, "scServicesTicketExpires"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/Date;

    .line 14
    const-string v2, "scServicesTicketRefreshed"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/Date;

    iget-object v2, v1, Lrockstarmobile/RockstarUser;->mobileToken:Ljava/lang/String;

    iget-object v3, v1, Lrockstarmobile/RockstarUser;->mobileTokenRefreshed:Ljava/util/Date;

    .line 17
    const-string v4, "email"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    .line 18
    const-string v4, "rockstarId"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/String;

    iget-object v4, v1, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;

    iget-object v8, v1, Lrockstarmobile/RockstarUser;->fingerprint:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Lrockstarmobile/RockstarUser$POLICY_STATE;

    .line 22
    const-string v5, "acceptedAllPoliciesRefreshed"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Ljava/util/Date;

    .line 23
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    .line 24
    const-string v5, "subscriptionStateRefreshed"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Ljava/util/Date;

    iget-object v1, v1, Lrockstarmobile/RockstarUser;->scAuthAccessToken:Ljava/lang/String;

    move-object/from16 v26, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    invoke-direct/range {v9 .. v26}, Lrockstarmobile/RockstarUser;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/RockstarUser$POLICY_STATE;Ljava/util/Date;Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;Ljava/util/Date;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lrockstarmobile/GCState$GameTicket;

    iget-object v2, v9, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lrockstarmobile/GCState$GameTicket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, v1, Lrockstarmobile/GCState$GameTicket;->gameTicket:Ljava/lang/String;

    const-string v2, ""

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    move-object/from16 v0, p2

    invoke-interface {v0, v9, v1}, Lrockstarmobile/SocialClubAPI$RefreshCallback;->onRefresh(Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$refresh$17(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 2

    .line 1
    const-string v0, "done"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p2}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$refresh$18(Lrockstarmobile/SocialClubAPI$c;Ljava/util/Date;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 3
    const-string v1, "scAuthTokenExpires"

    invoke-interface {p0, v1, v0}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    const-string v0, "scAuthTokenRefreshed"

    invoke-interface {p0, v0, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string p1, "scAuthToken"

    invoke-interface {p0, p1, p2}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$refresh$19(Lrockstarmobile/SocialClubAPI$c;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "acceptedAllPoliciesRefreshed"

    invoke-interface {p0, v1, v0}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lrockstarmobile/RockstarUser$POLICY_STATE;->YES:Lrockstarmobile/RockstarUser$POLICY_STATE;

    goto :goto_0

    :cond_0
    sget-object p1, Lrockstarmobile/RockstarUser$POLICY_STATE;->NO:Lrockstarmobile/RockstarUser$POLICY_STATE;

    :goto_0
    const-string v0, "acceptedAllPolicies"

    invoke-interface {p0, v0, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$refresh$20(Lrockstarmobile/SocialClubAPI$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "gameTicket"

    invoke-interface {p0, p2, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$refresh$21(Lrockstarmobile/SocialClubAPI$c;Ljava/util/Date;Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;)V
    .locals 1

    .line 1
    const-string v0, "subscriptionStateRefreshed"

    invoke-interface {p0, v0, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    const-string p1, "subscriptionState"

    invoke-interface {p0, p1, p2}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$refresh$22(Lrockstarmobile/SocialClubAPI$c;ZLrockstarmobile/RockstarUser;Ljava/util/Date;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 1
    const-string v0, "rockstarId"

    invoke-interface {p0, v0, p9}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    const-string p9, "email"

    invoke-interface {p0, p9, p10}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    const-string p9, "scServicesTicketExpires"

    invoke-interface {p0, p9, p11}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    const-string p9, "scServicesTicketRefreshed"

    invoke-interface {p0, p9, p12}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string p9, "scServicesTicket"

    invoke-interface {p0, p9, p8}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;

    new-instance p9, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda11;

    invoke-direct {p9, p0, p3}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda11;-><init>(Lrockstarmobile/SocialClubAPI$c;Ljava/util/Date;)V

    invoke-static {p8, p1, p9, p4}, Lrockstarmobile/SocialClubAPI;->createScAuthToken2(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->scAuthTokenExpires:Ljava/util/Date;

    const-string p9, "scAuthTokenExpires"

    invoke-interface {p0, p9, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->scAuthTokenRefreshed:Ljava/util/Date;

    const-string p9, "scAuthTokenRefreshed"

    invoke-interface {p0, p9, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    const-string p9, "scAuthToken"

    invoke-interface {p0, p9, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p5, :cond_1

    .line 25
    new-instance p1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda16;-><init>(Lrockstarmobile/SocialClubAPI$c;)V

    invoke-static {p8, p1}, Lrockstarmobile/SocialClubAPI;->allPoliciesAccepted(Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;)V

    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->acceptedAllPoliciesRefreshed:Ljava/util/Date;

    const-string p5, "acceptedAllPoliciesRefreshed"

    invoke-interface {p0, p5, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    const-string p5, "acceptedAllPolicies"

    invoke-interface {p0, p5, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    if-eqz p6, :cond_2

    .line 35
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object p1

    iget-object p1, p1, Lrockstarmobile/Environment;->rockstarTitleGameServicesBase:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 36
    new-instance p1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda17;-><init>(Lrockstarmobile/SocialClubAPI$c;)V

    invoke-static {p2, p1, p4}, Lrockstarmobile/SocialClubAPI;->exchangeMobileLauncherTicketForTitleTicket(Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    goto :goto_2

    .line 40
    :cond_2
    const-string p1, "gameTicket"

    const-string p5, ""

    invoke-interface {p0, p1, p5}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :goto_2
    sget-boolean p1, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz p1, :cond_3

    if-eqz p7, :cond_3

    .line 47
    new-instance p1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, p3}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda18;-><init>(Lrockstarmobile/SocialClubAPI$c;Ljava/util/Date;)V

    invoke-static {p8, p1, p4}, Lrockstarmobile/SocialClubAPI;->getSubscriptionState(Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void

    .line 55
    :cond_3
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->subscriptionStateRefreshed:Ljava/util/Date;

    const-string p3, "subscriptionStateRefreshed"

    invoke-interface {p0, p3, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object p1, p2, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    const-string p2, "subscriptionState"

    invoke-interface {p0, p2, p1}, Lrockstarmobile/SocialClubAPI$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$refresh$23(Lrockstarmobile/SocialClubAPI$d;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/util/Date;->setTime(J)V

    move-object v0, p0

    move-object v5, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Lrockstarmobile/SocialClubAPI$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic lambda$refreshUser$12(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$refreshUser$13(Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    .line 2
    sget-object p1, Lrockstarmobile/SocialClubAPI;->refreshResultQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;

    .line 3
    invoke-interface {v2, p0}, Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;->call(Lrockstarmobile/RockstarUser;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    sput-object p0, Lrockstarmobile/SocialClubAPI;->refreshResultQueue:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$refreshUser$14(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    const-string v0, "AuthenticationFailed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {v0}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    .line 4
    :cond_0
    sget-object p0, Lrockstarmobile/SocialClubAPI;->refreshResultQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;

    .line 5
    invoke-interface {v3, v0}, Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;->call(Lrockstarmobile/RockstarUser;)V

    goto :goto_0

    .line 7
    :cond_1
    sput-object v0, Lrockstarmobile/SocialClubAPI;->refreshResultQueue:Ljava/util/ArrayList;

    return-void
.end method

.method private static legalPoliciesGetAcceptedVersion(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v1

    iget-object v1, v1, Lrockstarmobile/Environment;->rockstarMobileLauncherGameServicesBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/legalpolicies.asmx/GetAcceptedVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?ticket="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&policyTag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 6
    sget-object p1, Lrockstarmobile/SocialClubAPI;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    move-object v3, v1

    .line 9
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "GET"

    const/16 v4, 0x1e

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lrockstarmobile/SocialClubAPI;->request(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method private static legalPoliciesVersions(Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v1

    iget-object v1, v1, Lrockstarmobile/Environment;->rockstarCloudServicesBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/titles/mobile/android/legal/version/version_num.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?ticket="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5
    sget-object v0, Lrockstarmobile/SocialClubAPI;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    :goto_0
    move-object v4, v1

    .line 8
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v3, "GET"

    const/16 v5, 0x1e

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lrockstarmobile/SocialClubAPI;->request(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method public static refresh(Lrockstarmobile/RockstarUser;ZZZZZLrockstarmobile/SocialClubAPI$StatusCallback;Lrockstarmobile/SocialClubAPI$RefreshCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "USER_REFRESH_MSG1"

    const-string v5, "loading..."

    invoke-static {v4, v5, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "USER_REFRESH_MSG2"

    const-string v7, "checking data..."

    invoke-static {v6, v7, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "USER_REFRESH_MSG3"

    const-string v7, "inspecting profile..."

    invoke-static {v6, v7, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "USER_REFRESH_MSG4"

    const-string v7, "awaiting response..."

    invoke-static {v6, v7, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "USER_REFRESH_MSG5"

    const-string v7, "checking permissions..."

    invoke-static {v6, v7, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p6}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda6;-><init>(Ljava/util/LinkedList;Lrockstarmobile/SocialClubAPI$StatusCallback;)V

    .line 15
    invoke-interface {v1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    .line 17
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    new-instance v1, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;

    move-object/from16 v2, p7

    invoke-direct {v1, v0, p0, v2}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;-><init>(Ljava/util/HashMap;Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$RefreshCallback;)V

    .line 52
    new-instance v5, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda8;

    move-object/from16 v2, p8

    invoke-direct {v5, v0, v2}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda8;-><init>(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    .line 59
    new-instance v0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;

    move-object v3, p0

    move v2, p2

    move v6, p3

    move v8, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda9;-><init>(Lrockstarmobile/SocialClubAPI$c;ZLrockstarmobile/RockstarUser;Ljava/util/Date;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;ZZZ)V

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v1

    iget-object v1, v1, Lrockstarmobile/Environment;->rockstarMobileLauncherGameServicesBase:Ljava/lang/String;

    iget-object v2, p0, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    iget-object v6, p0, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;

    iget-object v3, p0, Lrockstarmobile/RockstarUser;->fingerprint:Ljava/lang/String;

    new-instance v7, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0, v4}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda10;-><init>(Lrockstarmobile/SocialClubAPI$d;Ljava/util/Date;)V

    move-object p0, v1

    move-object p1, v2

    move-object p3, v3

    move-object p5, v5

    move-object p2, v6

    move-object p4, v7

    invoke-static/range {p0 .. p5}, Lrockstarmobile/SocialClubAPI;->createTicketScAuthToken2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    iget-object v2, p0, Lrockstarmobile/RockstarUser;->rockstarId:Ljava/lang/String;

    iget-object v4, p0, Lrockstarmobile/RockstarUser;->email:Ljava/lang/String;

    iget-object v5, p0, Lrockstarmobile/RockstarUser;->scServicesTicketExpires:Ljava/util/Date;

    iget-object v3, p0, Lrockstarmobile/RockstarUser;->scServicesTicketRefreshed:Ljava/util/Date;

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object p5, v3

    move-object p3, v4

    move-object p4, v5

    invoke-interface/range {p0 .. p5}, Lrockstarmobile/SocialClubAPI$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public static refreshUser(Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;)V
    .locals 11

    .line 1
    sget-object v1, Lrockstarmobile/SocialClubAPI;->refreshResultLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    sget-object v0, Lrockstarmobile/SocialClubAPI;->refreshResultQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lrockstarmobile/SocialClubAPI;->refreshResultQueue:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, v2, Lrockstarmobile/RockstarUser;->acceptedAllPoliciesRefreshed:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v6, 0x7

    cmp-long v3, v3, v6

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_1

    move-object v3, v5

    move v5, v4

    goto :goto_0

    :cond_1
    move-object v3, v5

    move v5, v6

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iget-object p0, v2, Lrockstarmobile/RockstarUser;->subscriptionStateRefreshed:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    const-wide/16 v9, 0x5

    cmp-long p0, v7, v9

    if-lez p0, :cond_2

    move v6, v4

    .line 13
    :cond_2
    new-instance v8, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda13;

    invoke-direct {v8}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda13;-><init>()V

    new-instance v9, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda14;

    invoke-direct {v9}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda14;-><init>()V

    new-instance v10, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda15;

    invoke-direct {v10}, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda15;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lrockstarmobile/SocialClubAPI;->refresh(Lrockstarmobile/RockstarUser;ZZZZZLrockstarmobile/SocialClubAPI$StatusCallback;Lrockstarmobile/SocialClubAPI$RefreshCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 32
    invoke-interface {p0, v0}, Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;->call(Lrockstarmobile/RockstarUser;)V

    .line 34
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;

    invoke-direct {p1}, Lrockstarmobile/utilities/HttpAPI$RequestTask;-><init>()V

    .line 9
    iput-object v0, p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->url:Ljava/net/URL;

    if-nez p3, :cond_0

    .line 11
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 13
    :cond_0
    iput-object p0, p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->method:Ljava/lang/String;

    .line 14
    iput p2, p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->timeoutInSeconds:I

    .line 15
    iput-object p4, p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->successCallback:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    .line 16
    iput-object p5, p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    const/4 p0, 0x1

    .line 17
    iput-boolean p0, p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->xmlResponse:Z

    .line 18
    iput-object p3, p1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->headers:Ljava/util/HashMap;

    const/4 p0, 0x0

    .line 19
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 20
    :catch_0
    new-instance p0, Lrockstarmobile/utilities/HttpAPI$Error;

    const-string p2, "bad-url"

    const-string p3, "could not parse the url."

    invoke-direct {p0, p2, p3, p1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p0}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    .line 21
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "bad url : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error Viewed"

    invoke-virtual {p0, p2, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void
.end method
