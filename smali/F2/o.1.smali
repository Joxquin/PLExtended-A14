.class public final synthetic LF2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:LF2/q;


# direct methods
.method public synthetic constructor <init>(LF2/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/o;->a:LF2/q;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object p0, p0, LF2/o;->a:LF2/q;

    const/4 v0, 0x1

    iput-boolean v0, p0, LF2/q;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LF2/q;->l:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LF2/q;->t(Z)V

    return-void
.end method
