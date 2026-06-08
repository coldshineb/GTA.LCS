.class Lio/sentry/logger/LoggerBatchProcessor$BatchRunnable;
.super Ljava/lang/Object;
.source "LoggerBatchProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/logger/LoggerBatchProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/logger/LoggerBatchProcessor;


# direct methods
.method private constructor <init>(Lio/sentry/logger/LoggerBatchProcessor;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lio/sentry/logger/LoggerBatchProcessor$BatchRunnable;->this$0:Lio/sentry/logger/LoggerBatchProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/logger/LoggerBatchProcessor;Lio/sentry/logger/LoggerBatchProcessor$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lio/sentry/logger/LoggerBatchProcessor$BatchRunnable;-><init>(Lio/sentry/logger/LoggerBatchProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor$BatchRunnable;->this$0:Lio/sentry/logger/LoggerBatchProcessor;

    invoke-static {v0}, Lio/sentry/logger/LoggerBatchProcessor;->access$100(Lio/sentry/logger/LoggerBatchProcessor;)V

    return-void
.end method
