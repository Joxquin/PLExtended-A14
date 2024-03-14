.class public abstract Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$NavButtonLayoutter;


# instance fields
.field private final backButton:Landroid/widget/ImageView;

.field private final endContextualContainer:Landroid/view/ViewGroup;

.field private final homeButton:Landroid/widget/ImageView;

.field private final navButtonContainer:Landroid/widget/LinearLayout;

.field private final recentsButton:Landroid/widget/ImageView;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->navButtonContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->endContextualContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a01b5

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->homeButton:Landroid/widget/ImageView;

    const p1, 0x7f0a029c

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->recentsButton:Landroid/widget/ImageView;

    const p1, 0x7f0a00a1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->backButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    new-instance p0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    const p3, 0x7f0802b8

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/RotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/RotateDrawable;->setFromDegrees(F)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_1
    const/high16 p2, -0x3d4c0000    # -90.0f

    :goto_1
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/RotateDrawable;->setToDegrees(F)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getBackButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getEndContextualContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->endContextualContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getHomeButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->homeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getNavButtonContainer()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->navButtonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getRecentsButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->recentsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->resources:Landroid/content/res/Resources;

    return-object p0
.end method
