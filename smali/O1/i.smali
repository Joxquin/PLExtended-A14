.class public final LO1/i;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p2, p0, LO1/i;->d:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getLocationOnScreen([I)V
    .locals 2

    iget-object p0, p0, LO1/i;->d:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, p1, v0

    return-void
.end method
