.class public final Lcom/android/launcher3/util/MultiTranslateDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mTranslationX:Lcom/android/launcher3/util/MultiPropertyFactory;

.field private final mTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/MultiPropertyFactory;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    new-instance v2, Lcom/android/launcher3/util/x;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/x;-><init>(I)V

    invoke-direct {v0, p2, v1, p1, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    iput-object v0, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationX:Lcom/android/launcher3/util/MultiPropertyFactory;

    new-instance p1, Lcom/android/launcher3/util/MultiPropertyFactory;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-instance v1, Lcom/android/launcher3/util/x;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/x;-><init>(I)V

    const/4 v2, 0x5

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    iput-object p1, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    return-void
.end method


# virtual methods
.method public final getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationX:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public final getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public final setTranslation(FFI)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method
