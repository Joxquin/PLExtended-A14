.class public final LA2/f;
.super LA2/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:LA2/h;

.field public final synthetic d:LA2/g;


# direct methods
.method public constructor <init>(LA2/g;Landroid/content/Context;Landroid/text/TextPaint;LA2/h;)V
    .locals 0

    iput-object p1, p0, LA2/f;->d:LA2/g;

    iput-object p2, p0, LA2/f;->a:Landroid/content/Context;

    iput-object p3, p0, LA2/f;->b:Landroid/text/TextPaint;

    iput-object p4, p0, LA2/f;->c:LA2/h;

    invoke-direct {p0}, LA2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p0, p0, LA2/f;->c:LA2/h;

    invoke-virtual {p0, p1}, LA2/h;->a(I)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, LA2/f;->b:Landroid/text/TextPaint;

    iget-object v1, p0, LA2/f;->d:LA2/g;

    iget-object v2, p0, LA2/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, LA2/g;->f(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, LA2/f;->c:LA2/h;

    invoke-virtual {p0, p1, p2}, LA2/h;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
