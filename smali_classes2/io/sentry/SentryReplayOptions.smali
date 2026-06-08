.class public final Lio/sentry/SentryReplayOptions;
.super Ljava/lang/Object;
.source "SentryReplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryReplayOptions$SentryReplayQuality;
    }
.end annotation


# static fields
.field public static final ANDROIDX_MEDIA_VIEW_CLASS_NAME:Ljava/lang/String; = "androidx.media3.ui.PlayerView"

.field public static final EXOPLAYER_CLASS_NAME:Ljava/lang/String; = "com.google.android.exoplayer2.ui.PlayerView"

.field public static final EXOPLAYER_STYLED_CLASS_NAME:Ljava/lang/String; = "com.google.android.exoplayer2.ui.StyledPlayerView"

.field public static final IMAGE_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.ImageView"

.field public static final TEXT_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.TextView"

.field public static final VIDEO_VIEW_CLASS_NAME:Ljava/lang/String; = "android.widget.VideoView"

.field public static final WEB_VIEW_CLASS_NAME:Ljava/lang/String; = "android.webkit.WebView"


# instance fields
.field private debug:Z

.field private errorReplayDuration:J

.field private frameRate:I

.field private maskViewClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maskViewContainerClass:Ljava/lang/String;

.field private onErrorSampleRate:Ljava/lang/Double;

.field private quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

.field private sdkVersion:Lio/sentry/protocol/SdkVersion;

.field private sessionDuration:J

.field private sessionSampleRate:Ljava/lang/Double;

.field private sessionSegmentDuration:J

.field private trackConfiguration:Z

.field private unmaskViewClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unmaskViewContainerClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SdkVersion;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0, p3}, Lio/sentry/SentryReplayOptions;-><init>(ZLio/sentry/protocol/SdkVersion;)V

    .line 160
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->sessionSampleRate:Ljava/lang/Double;

    .line 161
    iput-object p2, p0, Lio/sentry/SentryReplayOptions;->onErrorSampleRate:Ljava/lang/Double;

    .line 162
    iput-object p3, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-void
.end method

.method public constructor <init>(ZLio/sentry/protocol/SdkVersion;)V
    .locals 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->unmaskViewClasses:Ljava/util/Set;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewContainerClass:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->unmaskViewContainerClass:Ljava/lang/String;

    .line 104
    sget-object v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->MEDIUM:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    iput-object v0, p0, Lio/sentry/SentryReplayOptions;->quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    const/4 v0, 0x1

    .line 110
    iput v0, p0, Lio/sentry/SentryReplayOptions;->frameRate:I

    const-wide/16 v1, 0x7530

    .line 113
    iput-wide v1, p0, Lio/sentry/SentryReplayOptions;->errorReplayDuration:J

    const-wide/16 v1, 0x1388

    .line 116
    iput-wide v1, p0, Lio/sentry/SentryReplayOptions;->sessionSegmentDuration:J

    const-wide/32 v1, 0x36ee80

    .line 119
    iput-wide v1, p0, Lio/sentry/SentryReplayOptions;->sessionDuration:J

    .line 128
    iput-boolean v0, p0, Lio/sentry/SentryReplayOptions;->trackConfiguration:Z

    const/4 v1, 0x0

    .line 140
    iput-boolean v1, p0, Lio/sentry/SentryReplayOptions;->debug:Z

    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayOptions;->setMaskAllText(Z)V

    .line 145
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayOptions;->setMaskAllImages(Z)V

    .line 146
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v0, "android.webkit.WebView"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v0, "android.widget.VideoView"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v0, "androidx.media3.ui.PlayerView"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v0, "com.google.android.exoplayer2.ui.PlayerView"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    const-string v0, "com.google.android.exoplayer2.ui.StyledPlayerView"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iput-object p2, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    :cond_0
    return-void
.end method


# virtual methods
.method public addMaskViewClass(Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUnmaskViewClass(Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrorReplayDuration()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lio/sentry/SentryReplayOptions;->errorReplayDuration:J

    return-wide v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 266
    iget v0, p0, Lio/sentry/SentryReplayOptions;->frameRate:I

    return v0
.end method

.method public getMaskViewClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    return-object v0
.end method

.method public getMaskViewContainerClass()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->maskViewContainerClass:Ljava/lang/String;

    return-object v0
.end method

.method public getOnErrorSampleRate()Ljava/lang/Double;
    .locals 1

    .line 167
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->onErrorSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getQuality()Lio/sentry/SentryReplayOptions$SentryReplayQuality;
    .locals 1

    .line 257
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    return-object v0
.end method

.method public getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 1

    .line 317
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public getSessionDuration()J
    .locals 2

    .line 281
    iget-wide v0, p0, Lio/sentry/SentryReplayOptions;->sessionDuration:J

    return-wide v0
.end method

.method public getSessionSampleRate()Ljava/lang/Double;
    .locals 1

    .line 186
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->sessionSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSessionSegmentDuration()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lio/sentry/SentryReplayOptions;->sessionSegmentDuration:J

    return-wide v0
.end method

.method public getUnmaskViewClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->unmaskViewClasses:Ljava/util/Set;

    return-object v0
.end method

.method public getUnmaskViewContainerClass()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lio/sentry/SentryReplayOptions;->unmaskViewContainerClass:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lio/sentry/SentryReplayOptions;->debug:Z

    return v0
.end method

.method public isSessionReplayEnabled()Z
    .locals 4

    .line 171
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSessionReplayForErrorsEnabled()Z
    .locals 4

    .line 190
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrackConfiguration()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lio/sentry/SentryReplayOptions;->trackConfiguration:Z

    return v0
.end method

.method public setDebug(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lio/sentry/SentryReplayOptions;->debug:Z

    return-void
.end method

.method public setMaskAllImages(Z)V
    .locals 1

    .line 228
    const-string v0, "android.widget.ImageView"

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayOptions;->addUnmaskViewClass(Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMaskAllText(Z)V
    .locals 1

    .line 210
    const-string v0, "android.widget.TextView"

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->unmaskViewClasses:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, v0}, Lio/sentry/SentryReplayOptions;->addUnmaskViewClass(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewClasses:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMaskViewContainerClass(Ljava/lang/String;)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lio/sentry/SentryReplayOptions;->addMaskViewClass(Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->maskViewContainerClass:Ljava/lang/String;

    return-void
.end method

.method public setOnErrorSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 175
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->onErrorSampleRate:Ljava/lang/Double;

    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQuality(Lio/sentry/SentryReplayOptions$SentryReplayQuality;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->quality:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    return-void
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-void
.end method

.method public setSessionSampleRate(Ljava/lang/Double;)V
    .locals 3

    .line 194
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->sessionSampleRate:Ljava/lang/Double;

    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrackConfiguration(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lio/sentry/SentryReplayOptions;->trackConfiguration:Z

    return-void
.end method

.method public setUnmaskViewContainerClass(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lio/sentry/SentryReplayOptions;->unmaskViewContainerClass:Ljava/lang/String;

    return-void
.end method
