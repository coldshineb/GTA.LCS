.class final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
.super Ljava/lang/Object;
.source "SystemEventsBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BatteryState"
.end annotation


# instance fields
.field private final charging:Ljava/lang/Boolean;

.field private final level:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    .line 409
    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Integer;
    .locals 0

    .line 403
    iget-object p0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Boolean;
    .locals 0

    .line 403
    iget-object p0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 414
    instance-of v0, p1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 415
    :cond_0
    check-cast p1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    .line 416
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    iget-object v2, p1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    iget-object p1, p1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 421
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
