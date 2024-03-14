.class final Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "bottomSheetAlpha"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->d(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-static {p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->f(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;F)V

    return-void
.end method
