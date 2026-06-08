.class public Lrockstarmobile/utilities/Log;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/utilities/Log$a;
    }
.end annotation


# static fields
.field private static _loggingInitialized:Z

.field private static final launchTime:J


# instance fields
.field public debugEnabled:Z

.field public errorEnabled:Z

.field public infoEnabled:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lrockstarmobile/utilities/Log;->launchTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrockstarmobile/utilities/Log;->debugEnabled:Z

    .line 3
    iput-boolean v0, p0, Lrockstarmobile/utilities/Log;->infoEnabled:Z

    .line 4
    iput-boolean v0, p0, Lrockstarmobile/utilities/Log;->errorEnabled:Z

    .line 17
    iput-object p1, p0, Lrockstarmobile/utilities/Log;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lrockstarmobile/utilities/Log;->tag:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lrockstarmobile/utilities/Log;->debugEnabled:Z

    .line 21
    iput-boolean p3, p0, Lrockstarmobile/utilities/Log;->infoEnabled:Z

    .line 22
    iput-boolean p4, p0, Lrockstarmobile/utilities/Log;->errorEnabled:Z

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    sget-boolean p0, Lrockstarmobile/utilities/Log;->_loggingInitialized:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lrockstarmobile/utilities/Log;->_loggingInitialized:Z

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/utilities/Log;->debugEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lrockstarmobile/utilities/Log;->launchTime:J

    sub-long/2addr v0, v2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RockstarMobile@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/utilities/Log;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    .line 7
    iget-boolean v0, p0, Lrockstarmobile/utilities/Log;->errorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lrockstarmobile/utilities/Log;->launchTime:J

    sub-long/2addr v0, v2

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RockstarMobile@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/utilities/Log;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_1

    .line 15
    invoke-static {p2}, Lio/sentry/Sentry;->captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;

    :cond_1
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/utilities/Log;->errorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lrockstarmobile/utilities/Log$a;

    invoke-direct {v0, p1}, Lrockstarmobile/utilities/Log$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0, p2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/utilities/Log;->infoEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lrockstarmobile/utilities/Log;->launchTime:J

    sub-long/2addr v0, v2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RockstarMobile@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/utilities/Log;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
