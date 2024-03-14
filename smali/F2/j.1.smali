.class public final synthetic LF2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic d:LF2/q;


# direct methods
.method public synthetic constructor <init>(LF2/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/j;->d:LF2/q;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, LF2/j;->d:LF2/q;

    iput-boolean p2, p0, LF2/q;->i:Z

    invoke-virtual {p0}, LF2/w;->q()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LF2/q;->t(Z)V

    iput-boolean p1, p0, LF2/q;->j:Z

    :cond_0
    return-void
.end method
