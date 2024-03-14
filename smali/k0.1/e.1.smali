.class public final synthetic Lk0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/e;->d:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lk0/e;->e:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lk0/e;->d:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    iget p0, p0, Lk0/e;->e:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lk0/s;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lk0/s;->e(ILandroid/content/Context;Ljava/lang/String;)Lk0/H;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk0/s;->e(ILandroid/content/Context;Ljava/lang/String;)Lk0/H;

    move-result-object p0

    :goto_0
    return-object p0
.end method
