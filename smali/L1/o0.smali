.class public final synthetic LL1/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:LL1/u0;


# direct methods
.method public synthetic constructor <init>(LL1/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/o0;->d:LL1/u0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, LL1/o0;->d:LL1/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "-- Finished selection."

    invoke-static {p0}, LM1/b;->f(Ljava/lang/String;)V

    return-void
.end method
