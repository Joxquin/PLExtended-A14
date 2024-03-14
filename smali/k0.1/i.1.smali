.class public final Lk0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/E;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lk0/i;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lk0/i;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Lk0/E;

    if-nez p0, :cond_1

    sget-object p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Lk0/g;

    :cond_1
    invoke-interface {p0, p1}, Lk0/E;->a(Ljava/lang/Object;)V

    return-void
.end method
