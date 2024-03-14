.class public final Lcom/android/quickstep/util/LottieAnimationColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->lambda$updateColors$2(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Map;Lcom/airbnb/lottie/LottieAnimationView;Lk0/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->lambda$updateColors$3(Ljava/util/Map;Lcom/airbnb/lottie/LottieAnimationView;Lk0/m;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/res/Resources;Ljava/util/Map;Landroid/content/res/Resources$Theme;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->lambda$updateColors$0(Landroid/content/res/Resources;Ljava/util/Map;Landroid/content/res/Resources$Theme;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Integer;Lx0/b;)Landroid/graphics/ColorFilter;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->lambda$updateColors$1(Ljava/lang/Integer;Lx0/b;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateColors$0(Landroid/content/res/Resources;Ljava/util/Map;Landroid/content/res/Resources$Theme;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateColors$1(Ljava/lang/Integer;Lx0/b;)Landroid/graphics/ColorFilter;
    .locals 1

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static synthetic lambda$updateColors$2(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Lp0/e;

    const-string v1, "**"

    filled-new-array {v1, p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lp0/e;-><init>([Ljava/lang/String;)V

    sget-object p1, Lk0/G;->K:Landroid/graphics/ColorFilter;

    new-instance v1, Lcom/android/quickstep/util/A;

    invoke-direct {v1, p2}, Lcom/android/quickstep/util/A;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lp0/e;Ljava/lang/Object;Lx0/e;)V

    return-void
.end method

.method private static synthetic lambda$updateColors$3(Ljava/util/Map;Lcom/airbnb/lottie/LottieAnimationView;Lk0/m;)V
    .locals 0

    new-instance p2, Lcom/android/quickstep/util/B;

    invoke-direct {p2, p1}, Lcom/android/quickstep/util/B;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static updateColors(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->updateColors(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static updateColors(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;Landroid/content/res/Resources$Theme;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/util/y;

    invoke-direct {v3, v0, p1, p2}, Lcom/android/quickstep/util/y;-><init>(Landroid/content/res/Resources;Ljava/util/Map;Landroid/content/res/Resources$Theme;)V

    .line 5
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 6
    :goto_0
    new-instance p2, Lcom/android/quickstep/util/z;

    invoke-direct {p2, p0, p1}, Lcom/android/quickstep/util/z;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lk0/F;)Z

    return-void
.end method
