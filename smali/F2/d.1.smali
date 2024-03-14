.class public final synthetic LF2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic d:LF2/f;


# direct methods
.method public synthetic constructor <init>(LF2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/d;->d:LF2/f;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, LF2/d;->d:LF2/f;

    invoke-virtual {p0}, LF2/f;->u()Z

    move-result p1

    invoke-virtual {p0, p1}, LF2/f;->t(Z)V

    return-void
.end method
