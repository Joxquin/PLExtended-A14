.class public final LL1/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:LL1/A0;


# direct methods
.method public constructor <init>(LL1/A0;)V
    .locals 0

    iput-object p1, p0, LL1/y0;->d:LL1/A0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, LL1/y0;->d:LL1/A0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LL1/A0;->b(Z)V

    iget-object p0, p0, LL1/y0;->d:LL1/A0;

    invoke-virtual {p0}, LL1/A0;->a()V

    const/4 p0, 0x1

    return p0
.end method
