.class public final synthetic LL1/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic d:LL1/u0;


# direct methods
.method public synthetic constructor <init>(LL1/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/n0;->d:LL1/u0;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, LL1/n0;->d:LL1/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "-- Finished selection."

    invoke-static {p0}, LM1/b;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
