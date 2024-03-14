.class public final synthetic LX1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LX1/f;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(LX1/f;Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/c;->d:LX1/f;

    iput-object p2, p0, LX1/c;->e:Landroid/graphics/Rect;

    iput-object p3, p0, LX1/c;->f:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LX1/c;->d:LX1/f;

    iget-object v1, p0, LX1/c;->e:Landroid/graphics/Rect;

    iget-object p0, p0, LX1/c;->f:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, LX1/f;->h(LX1/f;Landroid/graphics/Rect;Landroid/content/Intent;)V

    return-void
.end method
