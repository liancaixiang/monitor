/*
 * Copyright (c) 2014 original authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.eigengo.monitor.agent.play;

import play.api.mvc.RequestHeader;
import scala.Option;
import play.api.GlobalSettings;
import play.api.mvc.Handler;

/**
 * Centralises the Play pointcuts
 */
abstract aspect Pointcuts {

    /**
     * Pointcut for {@code play.api.GlobalSettings.onRouteRequest(request)}, accessing the submitted request and returned Handler
     */
    static pointcut playReceiveRequest(RequestHeader request) :
            execution(Option<Handler> play.api.GlobalSettings+.onRouteRequest(*)) && args(request);
}