/**
 * @package Showcase-Nomad-Jax
 *
 * @file Todo resource
 * @copyright 2023-present Christoph Kappel <christoph@unexist.dev>
 * @version $Id$
 *
 * This program can be distributed under the terms of the Apache License v2.0.
 * See the file LICENSE for details.
 **/

package dev.unexist.showcase.jax.adapter;

import io.quarkus.vertx.web.Route;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.handler.FileSystemAccess;
import io.vertx.ext.web.handler.StaticHandler;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class JaxResource {

    @Route(path = "/jax", methods = Route.HttpMethod.GET)
    public void indexContent(RoutingContext rc) {
        StaticHandler.create(FileSystemAccess.RELATIVE, "slides/index.html").handle(rc);
    }
}