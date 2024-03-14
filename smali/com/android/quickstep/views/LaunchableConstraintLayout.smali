.class public Lcom/android/quickstep/views/LaunchableConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/t;


# instance fields
.field private final delegate:Lcom/android/systemui/animation/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 3
    new-instance v0, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 7
    new-instance p2, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    .line 8
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 11
    new-instance p2, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    .line 12
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    new-instance p1, Lcom/android/systemui/animation/u;

    .line 15
    new-instance p2, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;-><init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V

    .line 16
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lcom/android/systemui/animation/u;

    return-void
.end method

.method public static final synthetic access$setVisibility$s2114496391(Lcom/android/quickstep/views/LaunchableConstraintLayout;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lcom/android/systemui/animation/u;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/u;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout;->delegate:Lcom/android/systemui/animation/u;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/u;->i(I)V

    return-void
.end method
