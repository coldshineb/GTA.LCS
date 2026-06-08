.class public final synthetic Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lio/sentry/android/replay/capture/BufferCaptureStrategy;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda3;->f$0:Ljava/io/File;

    iput-object p2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda3;->f$1:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda3;->f$0:Ljava/io/File;

    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda3;->f$1:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    invoke-static {v0, v1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->$r8$lambda$MSJ2px7U--OgNaU9fTWZchprnC0(Ljava/io/File;Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V

    return-void
.end method
