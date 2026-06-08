.class final Lcom/google/android/vending/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/google/android/vending/a/e;


# direct methods
.method constructor <init>(Lcom/google/android/vending/a/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    iput p2, p0, Lcom/google/android/vending/a/g;->a:I

    iput-object p3, p0, Lcom/google/android/vending/a/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/vending/a/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "LicenseChecker"

    const-string v1, "Received response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    iget-object v0, v0, Lcom/google/android/vending/a/e;->a:Lcom/google/android/vending/a/d;

    invoke-static {v0}, Lcom/google/android/vending/a/d;->a(Lcom/google/android/vending/a/d;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    invoke-static {v1}, Lcom/google/android/vending/a/e;->a(Lcom/google/android/vending/a/e;)Lcom/google/android/vending/a/i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    invoke-static {v0}, Lcom/google/android/vending/a/e;->b(Lcom/google/android/vending/a/e;)V

    iget-object v0, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    invoke-static {v0}, Lcom/google/android/vending/a/e;->a(Lcom/google/android/vending/a/e;)Lcom/google/android/vending/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    iget-object v1, v1, Lcom/google/android/vending/a/e;->a:Lcom/google/android/vending/a/d;

    invoke-static {v1}, Lcom/google/android/vending/a/d;->b(Lcom/google/android/vending/a/d;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/google/android/vending/a/g;->a:I

    iget-object v3, p0, Lcom/google/android/vending/a/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/vending/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/vending/a/i;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    iget-object v0, v0, Lcom/google/android/vending/a/e;->a:Lcom/google/android/vending/a/d;

    iget-object v1, p0, Lcom/google/android/vending/a/g;->d:Lcom/google/android/vending/a/e;

    invoke-static {v1}, Lcom/google/android/vending/a/e;->a(Lcom/google/android/vending/a/e;)Lcom/google/android/vending/a/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/a/d;->b(Lcom/google/android/vending/a/d;Lcom/google/android/vending/a/i;)V

    :cond_0
    return-void
.end method
