.class public Lcom/google/android/material/timepicker/b;
.super Landroidx/core/view/b;
.source "SourceFile"


# instance fields
.field public final d:LM/c;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/core/view/b;-><init>()V

    new-instance v0, LM/c;

    const/16 v1, 0x10

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, LM/c;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b;->d:LM/c;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    iget-object p0, p0, Lcom/google/android/material/timepicker/b;->d:LM/c;

    invoke-virtual {p2, p0}, LM/e;->b(LM/c;)V

    return-void
.end method
