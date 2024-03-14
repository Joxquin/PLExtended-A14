.class public final synthetic LL1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic d:LL1/n;


# direct methods
.method public synthetic constructor <init>(LL1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/m;->d:LL1/n;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, LL1/m;->d:LL1/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Handle touch for the background scrim."

    invoke-static {p1}, LM1/b;->f(Ljava/lang/String;)V

    iget-object p0, p0, LL1/n;->h:LL1/w;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LL1/w;->a()V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
