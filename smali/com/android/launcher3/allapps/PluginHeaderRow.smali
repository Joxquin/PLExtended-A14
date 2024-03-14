.class public final Lcom/android/launcher3/allapps/PluginHeaderRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# instance fields
.field private final mPlugin:Ln1/a;

.field final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ln1/a;Lcom/android/launcher3/allapps/FloatingHeaderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Ln1/a;

    invoke-interface {p1}, Ln1/a;->m()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getExpectedHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Ln1/a;

    invoke-interface {p0}, Ln1/a;->getExpectedHeight()I

    move-result p0

    return p0
.end method

.method public final getFocusedChild()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTypeClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/launcher3/allapps/PluginHeaderRow;

    return-object p0
.end method

.method public final hasVisibleContent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setVerticalScroll(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .locals 0

    return-void
.end method

.method public final shouldDraw()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
