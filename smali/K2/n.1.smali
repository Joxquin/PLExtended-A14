.class public abstract LK2/n;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, LK2/n;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 4
    iput-object p1, p0, LK2/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LK2/n;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LK2/n;->d:Ljava/lang/String;

    invoke-virtual {p0}, LK2/n;->s()V

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public abstract t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z
.end method

.method public abstract u(I)V
.end method
