.class public final Lio/sentry/Baggage$DSCKeys;
.super Ljava/lang/Object;
.source "Baggage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Baggage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DSCKeys"
.end annotation


# static fields
.field public static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENVIRONMENT:Ljava/lang/String; = "sentry-environment"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "sentry-public_key"

.field public static final RELEASE:Ljava/lang/String; = "sentry-release"

.field public static final REPLAY_ID:Ljava/lang/String; = "sentry-replay_id"

.field public static final SAMPLED:Ljava/lang/String; = "sentry-sampled"

.field public static final SAMPLE_RAND:Ljava/lang/String; = "sentry-sample_rand"

.field public static final SAMPLE_RATE:Ljava/lang/String; = "sentry-sample_rate"

.field public static final TRACE_ID:Ljava/lang/String; = "sentry-trace_id"

.field public static final TRANSACTION:Ljava/lang/String; = "sentry-transaction"

.field public static final USER_ID:Ljava/lang/String; = "sentry-user_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    .line 636
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sentry-trace_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sentry-public_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sentry-release"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sentry-user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sentry-environment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sentry-transaction"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sentry-sample_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sentry-sample_rand"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sentry-sampled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sentry-replay_id"

    aput-object v2, v0, v1

    .line 637
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/Baggage$DSCKeys;->ALL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
