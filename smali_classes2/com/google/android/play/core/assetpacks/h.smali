.class public final synthetic Lcom/google/android/play/core/assetpacks/h;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/assetpacks/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/h;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/h;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/h;->a:Lcom/google/android/play/core/assetpacks/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/l;->e(Ljava/lang/Exception;)V

    return-void
.end method
