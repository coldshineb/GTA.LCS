.class public Lcom/google/android/gms/auth/api/signin/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->a:Lcom/google/android/gms/common/api/Scope;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/a;->a:Ljava/util/Set;

    move v4, v3

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;B)V

    return-object v0
.end method
