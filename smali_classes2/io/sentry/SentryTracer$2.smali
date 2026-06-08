.class Lio/sentry/SentryTracer$2;
.super Ljava/util/TimerTask;
.source "SentryTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/SentryTracer;->scheduleDeadlineTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/SentryTracer;


# direct methods
.method constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lio/sentry/SentryTracer$2;->this$0:Lio/sentry/SentryTracer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 314
    iget-object v0, p0, Lio/sentry/SentryTracer$2;->this$0:Lio/sentry/SentryTracer;

    invoke-static {v0}, Lio/sentry/SentryTracer;->access$200(Lio/sentry/SentryTracer;)V

    return-void
.end method
