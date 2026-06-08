.class public final Lcom/google/android/gms/b/aC;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/b/aD;

.field public static final b:Lcom/google/android/gms/b/aE;

.field public static final c:Lcom/google/android/gms/b/aG;

.field public static final d:Lcom/google/android/gms/b/aF;

.field public static final e:Lcom/google/android/gms/b/aI;

.field public static final f:Lcom/google/android/gms/b/aH;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/b/aD;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/aD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/aC;->a:Lcom/google/android/gms/b/aD;

    new-instance v0, Lcom/google/android/gms/b/aE;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/aE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/aC;->b:Lcom/google/android/gms/b/aE;

    new-instance v0, Lcom/google/android/gms/b/aG;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/aG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/aC;->c:Lcom/google/android/gms/b/aG;

    new-instance v0, Lcom/google/android/gms/b/aF;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/aF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/aC;->d:Lcom/google/android/gms/b/aF;

    new-instance v0, Lcom/google/android/gms/b/aI;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/aI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/aC;->e:Lcom/google/android/gms/b/aI;

    new-instance v0, Lcom/google/android/gms/b/aH;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/aH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/aC;->f:Lcom/google/android/gms/b/aH;

    return-void
.end method
