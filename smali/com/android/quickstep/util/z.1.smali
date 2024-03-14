.class public final synthetic Lcom/android/quickstep/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/F;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/z;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/quickstep/util/z;->b:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final a(Lk0/m;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/z;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/quickstep/util/z;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->b(Ljava/util/Map;Lcom/airbnb/lottie/LottieAnimationView;Lk0/m;)V

    return-void
.end method
