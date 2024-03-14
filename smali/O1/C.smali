.class public final synthetic LO1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LO1/D;


# direct methods
.method public synthetic constructor <init>(LO1/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/C;->d:LO1/D;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LO1/C;->d:LO1/D;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
