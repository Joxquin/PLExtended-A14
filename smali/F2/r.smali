.class public final LF2/r;
.super Lx2/q;
.source "SourceFile"


# instance fields
.field public final synthetic d:LF2/v;


# direct methods
.method public constructor <init>(LF2/v;)V
    .locals 0

    iput-object p1, p0, LF2/r;->d:LF2/v;

    invoke-direct {p0}, Lx2/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, LF2/r;->d:LF2/v;

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object p0

    invoke-virtual {p0}, LF2/w;->a()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, LF2/r;->d:LF2/v;

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object p0

    invoke-virtual {p0}, LF2/w;->b()V

    return-void
.end method
