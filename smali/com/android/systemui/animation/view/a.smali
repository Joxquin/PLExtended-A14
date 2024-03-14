.class public Lcom/android/systemui/animation/view/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/t;


# instance fields
.field public final d:Lcom/android/systemui/animation/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 3
    new-instance v0, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;-><init>(Lcom/android/systemui/animation/view/a;)V

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/a;->d:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 7
    new-instance p2, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;-><init>(Lcom/android/systemui/animation/view/a;)V

    .line 8
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/a;->d:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 11
    new-instance p2, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;-><init>(Lcom/android/systemui/animation/view/a;)V

    .line 12
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/a;->d:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 15
    new-instance p2, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/view/LaunchableLinearLayout$delegate$1;-><init>(Lcom/android/systemui/animation/view/a;)V

    .line 16
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/a;->d:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public static final synthetic j(Lcom/android/systemui/animation/view/a;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/view/a;->d:Lcom/android/systemui/animation/u;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/u;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/view/a;->d:Lcom/android/systemui/animation/u;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/u;->i(I)V

    return-void
.end method
